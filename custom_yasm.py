import re

nextgen_ew_line_re = re.compile(r"^(?P<file>[^:]+):(?P<line>[^:]+):(?P<col>[^:]+):((?P<range>[{][^}]+[}]):)? (?P<err>[^[]+)(?P<warnopt>\[.*)?$")

def transform_ew(line):
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

def check_run(parser, args):
    if "--dump-preproc-tokens" in args:
        return "SKIP"
    if parser == "gas":
        return "SKIP"
    return None
