#! /usr/bin/env python
# Regression test runner
#
#  Copyright (C) 2010  Peter Johnson
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND OTHER CONTRIBUTORS ``AS IS''
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR OTHER CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
import os
import re
import subprocess
import sys
import time

enabled_colors = dict(
        red="\033[0;31m",
        grn="\033[0;32m",
        lgn="\033[1;32m",
        blu="\033[1;34m",
        mgn="\033[0;35m",
        std="\033[m",
        )
colors = dict(red="", grn="", lgn="", blu="", mgn="", std="")

# Color-enabled print function
def lprint(*args, **kwargs):
    sep = kwargs.pop("sep", ' ')
    end = kwargs.pop("end", '\n')
    color = kwargs.pop("color", None)
    file = kwargs.pop("file", sys.stdout)
    if color is not None:
        file.write(colors[color])
    file.write(sep.join(args))
    if color is not None:
        file.write(colors["std"])
    file.write(end)

yasmexe = None
ygasexe = None
nextgen = False
logfile_fn = ""
logfile = None
quiet = 0
verbose = False
outdir = None

def lprint_log(*args, **kwargs):
    lprint(*args, file=logfile, **kwargs)
    if verbose:
        lprint(*args, file=sys.stdout, **kwargs)

nextgen_ew_line_re = re.compile(r"^(?P<file>[^:]+):(?P<line>[^:]+):(?P<col>[^:]+):((?P<range>[{][^}]+[}]):)? (?P<err>[^[]+)(?P<warnopt>\[.*)?$")

def transform_old_ew(line):
    """Transform nextgen ew file into old style."""
    # column is dropped
    m = nextgen_ew_line_re.match(line)
    filename = m.group("file")
    lineno = m.group("line")
    err = m.group("err").rstrip()

    # <stdin> is -
    filename = filename.replace("<stdin>", "-")

    # replace first single quote (') with backtick (`)
    if "'" in err:
        parts = err.split("'")
        newparts = []
        for i, part in enumerate(parts):
            newparts.append(part)
            if i % 2 == 0:
                newparts.append("`")
            else:
                newparts.append("'")
        err = "".join(newparts[:-1])

    return "%s:%s: %s" % (filename, lineno, err)

def path_splitall(path):
    """Split all components of a path into a list."""
    outpath = []
    while True:
        (head, tail) = os.path.split(path)
        if not head:
            break
        path = head
        outpath.append(tail)
    outpath.append(path)
    outpath.reverse()
    return outpath

class Test(object):
    def __init__(self, name, fullpath):
        self.name = name
        self.fullpath = fullpath
        self.logfile = logfile

        # Default parser based on extension
        self.parser = self.name.endswith(".s") and "gas" or "nasm"

        self.basefn = os.path.splitext("_".join(path_splitall(self.name)))[0]
        self.outfn = self.basefn + ".out"
        self.ewfn = self.basefn + ".ew"

        # Read the input file in its entirety.  We use this for various things.
        f = open(self.fullpath)
        try:
            self.inputfile = f.read()
        finally:
            f.close()
        self.inputlines = self.inputfile.splitlines()

    def save_ew(self, stderrdata):
        f = open(os.path.join(outdir, self.ewfn), "w")
        try:
            f.write(stderrdata)
        finally:
            f.close()

    def read_ew(self, ext):
        """Get error/warnings from file if possible."""
        golden = []
        try:
            f = open(os.path.splitext(self.fullpath)[0] + ext)
            try:
                golden = [l.rstrip() for l in f.readlines()]
            finally:
                f.close()
        except IOError:
            pass
        return golden

    def compare_ew(self, stderrdata):
        """Check error/warnings output."""
        # If non-nextgen, look for an .ewold file first, and transform .ew file
        if not nextgen:
            golden = self.read_ew(".ewold")
            if not golden:
                golden = [transform_old_ew(l) for l in self.read_ew(".ew")]
        else:
            golden = self.read_ew(".ew")

        result = [l for l in enumerate(stderrdata.splitlines())
                  if not l[1].startswith(" ")]

        match = True
        if len(golden) != len(result):
            lprint_log("%s: error/warning mismatches" % self.ewfn)
            match = False
        for (i, o), g in zip(result, golden):
            if o != g:
                lprint_log("%s:%d: mismatch on error/warning"
                        % (self.ewfn, i+1))
                lprint_log(" Expected: %s" % g)
                lprint_log(" Actual: %s" % o)
                match = False

        if not match:
            self.save_ew(stderrdata)

        return match

    def compare_out_text(self):
        """Check output file (text version)."""
        # If there's a .txt file, use it; otherwise scan the input file
        # for comments starting with "out:" followed by text
        golden = []
        try:
            f = open(os.path.splitext(self.fullpath)[0] + ".txt")
            try:
                golden = list(f.readlines())
            finally:
                f.close()
        except IOError:
            for l in self.inputlines:
                comment = l.partition(self.commentsep)[2].strip()
                if not comment.startswith('out:'):
                    continue
                golden.append(comment[4:])

        goldenfn = self.basefn + ".gold"

        # load result file
        f = open(os.path.join(outdir, self.outfn))
        try:
            result = [l for l in f.readlines()]
        finally:
            f.close()

        # check result file
        import difflib
        d = difflib.Differ()
        comp = list(d.compare(golden, result))

        if len(golden) != len(result):
            lprint_log("%s: output length %d (expected %d)"
                    % (self.outfn, len(result), len(golden)))
            match = False
        match = True
        for l in comp:
            if l[0] != ' ':
                match = False
                break

        if not match:
            lprint_log("%s: output mismatch (see .diff for details)"
                    % self.outfn)

            # save diff
            f = open(os.path.join(outdir, self.basefn + ".diff"), "w")
            try:
                f.writelines(comp)
            finally:
                f.close()

        return match

    def read_hex(self, ext):
        golden = []
        try:
            f = open(os.path.splitext(self.fullpath)[0] + ext)
            try:
                golden = [l.strip() for l in f.readlines()]
            finally:
                f.close()
        except IOError:
            pass
        return golden

    def compare_out(self):
        """Check output file."""
        # If there's a .hex file, use it; otherwise scan the input file
        # for comments starting with "out:" followed by hex digits.
        golden = []
        fromfile = [] # line numbers from "out:"
        if not nextgen:
            golden = self.read_hex(".hexold")
            golden = [int(x, 16) for x in golden if x]
        if not golden:
            golden = self.read_hex(".hex")
            golden = [int(x, 16) for x in golden if x]
        if not golden:
            for lno, l in enumerate(self.inputlines):
                comment = l.partition(self.commentsep)[2].strip()
                if comment.startswith('out:'):
                    # raw values; 2-char are treated as hex, 3-char as octal
                    b = comment[4:].split()
                    for x in b:
                        if len(x) == 2:
                            golden.append(int(x, 16))
                        elif len(x) == 3:
                            golden.append(int(x, 8))
                        else:
                            break
                    for i in range(len(b)):
                        fromfile.append((lno+1, i))
                elif comment.startswith('rep-out:'):
                    # repeated raw values: first number is rep count, may be
                    # decimal or hex (indicated by leading 0x).  Following
                    # numbers are repeated values and must be hex.
                    vals = comment[8:].split()
                    length = vals.pop(0)
                    if length.startswith("0x"):
                        length = int(length, 16)
                    else:
                        length = int(length)
                    vals = [int(x, 16) for x in vals]
                    for j in range(length):
                        golden.extend(vals)
                        for i in range(len(vals)):
                            fromfile.append((lno+1, i))


        goldenfn = self.basefn + ".gold"

        # check result file
        f = open(os.path.join(outdir, self.outfn), "rb")
        try:
            result = f.read()
        finally:
            f.close()
        match = True
        if len(golden) != len(result):
            lprint_log("%s: output length %d (expected %d)"
                    % (self.outfn, len(result), len(golden)))
            match = False
        for i, (o, g) in enumerate(zip([ord(x) for x in result], golden)):
            if o != g:
                if fromfile:
                    ln = " per %s line %d byte %d" % \
                            (self.name, fromfile[i][0], fromfile[i][1])
                else:
                    ln = ""
                lprint_log("%s:%d: mismatch: %s (expected %s%s)"
                        % (self.outfn, i, hex(o), hex(g), ln))
                lprint_log("  (only the first mismatch is reported)")
                match = False
                break

        if not match:
            # save golden version to binary file
            lprint_log("Expected output: %s" % goldenfn)
            f = open(os.path.join(outdir, goldenfn), "wb")
            try:
                f.write("".join([chr(x) for x in golden]))
            finally:
                f.close()

            # save golden hex
            f = open(os.path.join(outdir, self.basefn + ".goldhex"), "w")
            try:
                f.writelines(["%02x\n" % x for x in golden])
            finally:
                f.close()

            # save result hex
            f = open(os.path.join(outdir, self.basefn + ".outhex"), "w")
            try:
                f.writelines(["%02x\n" % ord(x) for x in result])
            finally:
                f.close()

        return match

    def get_option(self, option, default=None):
        """Get test-specific option from the first line of the input file.
        Returns None if option not present, otherwise option string."""
        firstline = self.inputlines[0]

        start = firstline.find("[" + option)
        if start == -1:
            return default

        # get everything between the []
        str = firstline[start+1:]
        return str[len(option)+1:str.index(']')]

    def run(self):
        """Run test.  Returns false if test failed."""
        skip = False

        # Expected failure: "[fail]"
        expectfail = self.get_option("fail") is not None

        # Parser override: "[parser X]"
        self.parser = self.get_option("parser", self.parser)

        # Do text comparison instead of binary: "[text]"
        text = self.get_option("text") is not None

        # We default to bin output, but can override with "[oformat X]"
        format = self.get_option("oformat", "bin")

        yasmargs = ["yasm", "-f", format, "-p", self.parser]

        # Extra arguments: [args <args>]
        extraargs = self.get_option("args")
        if extraargs is not None:
            import shlex
            yasmargs.extend(shlex.split(extraargs))

        # full command line override: "[yasm <args>]"
        yasmoverride = self.get_option("yasm")
        if yasmoverride is not None:
            import shlex
            yasmargs = shlex.split("yasm "+yasmoverride)

        # full command line override: "[ygas <args>]"
        ygasoverride = self.get_option("ygas")
        if ygasoverride is not None:
            if ygasexe is None:
                skip = True
            import shlex
            yasmargs = shlex.split("ygas "+ygasoverride)
            self.parser = "gas"

        # yasm / yasm-nextgen specific tests
        if nextgen:
            if self.get_option("!nextgen") is not None:
                skip = True
        else:
            # preproc-tokens option not supported by yasm
            # currently, yasm has many broken gas tests so skip them all
            if (self.get_option("nextgen") is not None or
                    "--dump-preproc-tokens" in yasmargs or
                    self.parser == "gas"):
                skip = True

        # Abort if test skipped
        if skip:
            lprint_log("[%s] %s" % ("SKIP".center(10), self.name))

        # Set comment separator based on parser
        self.commentsep = (self.parser == "gas") and "#" or ";"

        # Notify start of test
        lprint_log("[%s] %s (%s%s)%s" %
               ("RUN".center(10), self.name,
                yasmargs[0] == "ygas" and "ygas " or "",
                " ".join(yasmargs[1:]), expectfail and "{fail}" or ""))

        # Specify the output filename as we pipe the input.
        yasmargs.extend(["-o", os.path.join(outdir, self.outfn)])

        # We pipe the input, so append "-" to the command line for stdin input.
        yasmargs.append("-")

        # Run yasm!
        start = time.time()
        env = os.environ.copy()
        env["YASM_TEST_SUITE"] = "1"
        proc = subprocess.Popen(yasmargs, bufsize=4096,
                                executable=(ygasoverride and ygasexe or yasmexe),
                                stdin=subprocess.PIPE, stdout=subprocess.PIPE,
                                stderr=subprocess.PIPE, env=env)
        (stdoutdata, stderrdata) = proc.communicate(self.inputfile)
        end = time.time()

        ok = False
        if proc.returncode == 0 and not expectfail:
            ok = True
        elif proc.returncode < 0:
            lprint_log(" CRASHED: received signal %d" % (-proc.returncode))
            self.save_ew(stderrdata)
            lprint_log("[%s] %s (%d ms)"
                    % ("ERROR".center(10), self.name, int((end-start)*1000)))
            return "ERROR"
        elif expectfail:
            ok = True
        else:
            lprint_log("Error: return code mismatch.")
            lprint_log(" Expected: %d" % (expectfail and 1 or 0))
            lprint_log(" Actual: %d" % proc.returncode)
            if proc.returncode != 0:
                self.save_ew(stderrdata)

        # Check results
        if ok:
            match = self.compare_ew(stderrdata)
            if not match:
                ok = False

            if not expectfail or "--keep-output-file" in yasmargs:
                if text:
                    match = self.compare_out_text()
                else:
                    match = self.compare_out()
                if not match:
                    ok = False

        # Summarize test result
        if expectfail:
            if ok:  rv = "XFAIL"
            else:   rv = "XPASS"
        else:
            if ok:  rv = "PASS"
            else:   rv = "FAIL"
        lprint_log("[%s] %s (%d ms)"
                % (rv.center(10), self.name, int((end-start)*1000)))
        return rv

def run_all(bpath):
    ndirs = 0
    results = dict(TOTAL=0, PASS=0, SKIP=0, XFAIL=0, FAIL=0, XPASS=0, ERROR=0)
    result_color = dict(TOTAL="std", PASS="grn", SKIP="blu", XFAIL="lgn",
            FAIL="red", XPASS="red", ERROR="red")
    failed = []
    lprint_log("[==========] Running tests.")
    start = time.time()
    for root, dirs, files in sorted(os.walk(bpath), key=lambda x: x[0]):
        somefiles = sorted([f for f in files if f.endswith(".asm") or f.endswith(".s")])
        if not somefiles:
            continue
        ndirs += 1
        lprint_log("[----------] %d tests from %s"
                % (len(somefiles), root[len(bpath)+1:]))
        for name in somefiles:
            fullpath = os.path.join(root, name)
            name = fullpath[len(bpath)+1:]
            test = Test(name, fullpath)
            result = test.run()
            results["TOTAL"] += 1
            results[result] += 1
            if result != "SKIP" and (quiet < 1 or result in ("FAIL", "XPASS", "ERROR")):
                lprint(result, color=result_color[result], end="")
                lprint(": %s" % name)
        lprint_log("[----------] %d tests from %s"
                % (len(somefiles), root[len(bpath)+1:]))
    end = time.time()

    lprint_log("[==========] %d tests from %d directories ran. (%d ms total)"
            % (results["TOTAL"], ndirs, int((end-start)*1000)))

    if quiet < 1 or results["FAIL"] > 0 or results["XPASS"] > 0 or results["ERROR"] > 0:
        lprint("Summary (details in %s):" % logfile_fn)
    for result in ["TOTAL", "PASS", "SKIP", "XFAIL", "FAIL", "XPASS", "ERROR"]:
        if results[result] > 0:
            color = result_color[result]
        else:
            color = "std"
        if quiet < 1 or (result in ("FAIL", "XPASS", "ERROR") and results[result] > 0):
            lprint(" %s: %d" % (result, results[result]), color=color)
        # Logfile only since we printed to stdout
        lprint("[%s] %d tests."
                % (result.center(10), results[result]),
               file=logfile)

    # Re-list failed tests in log file
    if failed:
        lprint_log("[   FAIL   ] %d tests, listed below:" % len(failed))
        for name in failed:
            lprint_log("[   FAIL   ] %s" % name)
        lprint_log(" %d FAILED TESTS" % len(failed))
        return False
    return True

if __name__ == "__main__":
    from optparse import OptionParser
    parser = OptionParser(usage="rtest.py --output-dir=DIR --yasm=PATH [options] <path to regression tree>")
    parser.add_option("--output-dir", dest="outdir", default="results",
            help="path to output directory", metavar="DIR")
    parser.add_option("--yasm", dest="yasmexe",
            help="path to yasm executable", metavar="PATH")
    parser.add_option("--ygas", dest="ygasexe",
            help="path to ygas executable", metavar="PATH")
    parser.add_option("--nextgen", action="store_true", dest="nextgen",
            help="yasm-nextgen testing")
    parser.add_option("--color-tests", action="store_true", dest="color_tests",
            help="color code test output")
    parser.add_option("--log-file", dest="log_file", default="yasm-rtest.log",
            help="detailed log output file", metavar="FILE")
    parser.add_option("-q", "--quiet", action="count", help="quiet output")
    parser.add_option("-v", "--verbose", action="store_true", dest="verbose",
            help="output details to stdout (as well as log file)")

    (options, args) = parser.parse_args()

    if len(args) != 1:
        parser.error("missing argument")
    missing_opts = []
    if options.yasmexe is None: missing_opts.append("--yasm")
    if missing_opts:
        parser.error("missing mandatory options %s" %
                " ".join(missing_opts))

    if options.color_tests:
        colors = enabled_colors
    quiet = options.quiet
    nextgen = options.nextgen
    verbose = options.verbose

    outdir = options.outdir
    yasmexe = options.yasmexe
    ygasexe = options.ygasexe

    logfile_fn = options.log_file
    logfile = open(logfile_fn, "wt")
    all_ok = run_all(args[0])
    if all_ok:
        sys.exit(0)
    else:
        sys.exit(1)
