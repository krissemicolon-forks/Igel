# The Igel programming-language

**Igel** is a Clojure-like Lisp-dialect that combines the worlds of Hardware-description and problem-oriented programming.

There is a REPL for trying out the language, as well as the ability
to run files. 
<br>

## Why should I use Igel

Igel is a good choice for programming on heterogeneous systems. It can be used for quantum-computing, qbit simulation, hardware-description and verification or even for eneral purpose.The compiled igel core is pretty small and compact (< 200kb). This benefits the language to be embedded into other programs.

**work in progress**


## Features

* Clean implementation in VHDL
* Small binary ( less than 200kb )
* Great FFI's to C and VHDL
* Big standart-library
* More than 100 macro functions
* Hardware-description using own macros
* A self-hosting compiler driver
* F-Expressions
* C-Expressions
* And a lot more...

## Installing project dependencies on Unix

The Igel programming-language is initially written in VHDL and iVerilog, there fore you'll need to install the dependencies.

```bash
# installing the GHDL and the iVerilog compilers
$ sudo apt-get install ghdl iverilog
```

## Installing project dependencies on Windows

todo

## Installing project dependencies on OSX

todo

## Compiling the Igel driver 

While the core of Igel is written in Igel itselfe, you'll need to subcompile Igel with a prebuilt binary first, so it can generate a self-compiling binary. 
Below are the instructions for each platform.

### Compiling the Igel driver on Unix

If you're on a Unix-like machine, simply fire up a terminal of your choice and type the commands below.

todo


## Source

You can get the source on [GitHub](https://github.com/timo-cmd2/Igel) or
[GitLab](https://gitlab.com/timo-cmd2/Igel). The github repo is the official one
whereas the GitLab one is a mirror.

## Licensing

(C) Copyright 2020 - 2021 The Igel programming-language are licensed and built by Timo Sarkar and the community.
