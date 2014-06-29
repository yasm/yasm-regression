# Yasm-Regression

This is the regression test suite for yasm and yasm-nextgen.

The test suite includes a test suite runner, `rtest.py`, which recursively
scans for .asm and .s input files.  Each input file is run through the
assembler and the output and stderr results compared.

## Usage

Basic usage:

    % ./rtest.py --config=yasm.ini --yasm=../yasm/yasm .

This will run all tests in subfolders of the current directory (`.`) with
`../yasm/yasm` as the assembler executable.  Result files (e.g. output files
from the assembler) will be written to the `./results` directory, and a
detailed log file of the test run will be written to `./yasm-rtest.log`.

### Output

Summary output is written to stdout, while more detailed output is written
to the log file.  To get more detailed output on stderr, add `-v` to the
command line; to get less output, add one or more `-q` to the command line.

By default, outputs are written to `./results`; this can be overridden with the
command line option `--output-dir`.  Similarly, the log file output location
can be changed using the command line option `--log-file`.

## Configuration Files

Currently there are two configurations that can be used: `yasm.ini` and
`nextgen.ini`.  The configuration file has a `[GLOBAL]` section which can be
used to load a custom Python module (with the `CUSTOM_MODULE` option) for
customizing error/warning parsing and global test skipping, and an arbitrary
number of `[foo/bar.asm]` sections to customize a specific test's behavior with
the following options:

* `ERRWARN`: specifies file extension of stderr comparison file
  (defaults to `ew`)

* `OUTPUT`: specifies file extension of output comparison hex dump file
  (defaults to `hex`)

* `BROKEN`: if `yes`, `1`, or `true`, causes test to be skipped

## Input Files (.s and .asm)

The first line of the input file may specify more detailed configuration for
that particular test.  Each option needs to be in square brackets.  Note this
line is passed to the assembler as part of the input file, so it must be a
comment if used.

* `[fail]`: the test is expected to fail (error output code from the assembler)

* `[parser xxx]`: parser override; results in `-p xxx` to the assembler.  The
  default is based on the file extension (.s = gas, .asm = nasm)

* `[text]`: do a text comparison on the output file (instead of binary).
  Useful for preprocessor tests.

* `[oformat xxx]`: set the output file format; results in `-f xxx` to the
  assembler

* `[args x y z]`: arbitrary extra command line arguments to the assembler;
  passed through verbatim.  Useful for `-Dfoo=bar` and similar.

* `[yasm x y z]`: full command line override (options like `[parser]` ignored)

* `[ygas x y z]`: full command line override for ygas

## Output Comparison

For each test, the assembler output is compared to a "golden" result file.
Generally this is done byte-by-byte, but tests can specify the `[text]` option
for a text comparison instead of a binary comparison.

The "golden" results can be specified either with a hex dump file (one hex
byte per line) or by specifying the output bytes inline in the input file.
This latter method looks for comments in the input file starting with `; out:`
or `# out:` (depending on the selected parser), followed by raw values.  The
raw values are treated as octal (if 3 characters) or hex (if 2 characters).

Additionally, the input file may specify repeated raw values using `rep-out`
instead of `out`.  The first number is the rep count, which may be decimal
(no prefix) or hex (0x prefix).  Following this are the repeated values, which
must be 2-character hex values.

