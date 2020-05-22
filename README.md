# negative


## Description

These 10 lines of code determine the way negative numbers are represented by
the CPU the program is executed on.


Negative numbers can be represented in three different ways:

  1. an *algebraic sign bit*
  2. via *one's complement*
  3. via *two's complement*


Most modern systems use *two's complement* to represent negative numbers.


The core piece of the code is `(-1 & 3)` which returns different results
on different CPUs for the respective representations of negative numbers.
It returns

  * `1` if an *algebraic sign bit* is used,
  * `2` if *one's complement* is used, and
  * `3` if *two's complement* is used.


## Build and Execution

The code can be built using the provided *Makefile* by simply executing

  ```
  $ make
  ```


There is no *command line interface* (CLI), no configuration file is read,
and no environment variables are used. The software can be run from the
command line with no arguments:

  ```
  $ ./negative
  ```


A verbal description of the representation is printed to the
*standard output stream* (`STDOUT`, file descriptor `1`) according to
the enumeration in the "*Description*" section, and `negative` exits
with status code `0` (*success*).

In the unlikely case that the operation fails, "`operation failed`" is
printed to `STDOUT`, and `negative` exits with status code `1` (*failure*).


## Compatibility

`negative` is written in plain ANSI C and has no dependencies.

It is cross platform compatible and can be compiled at least under
Linux, Solaris, MacOS, and Windows.


## Copyright

Copyright &copy; 2017 Daniel Haase

The code is licensed under the **MIT license**.


## License

```
negative - determine the representation of negative numbers
Copyright (c) 2017 Daniel Haase

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
