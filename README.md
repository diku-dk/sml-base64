# sml-base64 [![CI](https://github.com/diku-dk/sml-base64/workflows/CI/badge.svg)](https://github.com/diku-dk/sml-base64/actions)

Standard ML library for base64 encoding and decoding.

## Overview of MLB files

- `lib/github.com/diku-dk/sml-base64/base64.mlb`:

  - **signature** [`BASE64`](lib/github.com/diku-dk/sml-base64/base64.sig)
  - **structure** `Base64 : BASE64`

## Use of the package

This library is set up to work well with the SML package manager
[smlpkg](https://github.com/diku-dk/smlpkg).  To use the package, in
the root of your project directory, execute the command:

```
$ smlpkg add github.com/diku-dk/sml-base64
```

This command will add a _requirement_ (a line) to the `sml.pkg` file in your
project directory (and create the file, if there is no file `sml.pkg`
already).

To download the library into the directory
`lib/github.com/diku-dk/sml-base64`, execute the command:

```
$ smlpkg sync
```

You can now reference the `mlb`-file using relative paths from within
your project's `mlb`-files.

Notice that you can choose either to treat the downloaded package as
part of your own project sources (vendoring) or you can add the
`sml.pkg` file to your project sources and make the `smlpkg sync`
command part of your build process.

## Authors

The `Base64` structure was originally written by Anthony
L. Shipman. The present version of the source code is based on a
modified version of the source code obtained from
[https://github.com/robsimmons/sml-lib](https://github.com/robsimmons/sml-lib). Modified
and reorganised slightly by Martin Elsman to work well with
[smlpkg](https://github.com/diku-dk/smlpkg).
