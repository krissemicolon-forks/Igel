#!/usr/bin/bash

cleanup() {
    trap - TERM QUIT INT EXIT
    rm -f vhdl_argv.tmp
}
trap "cleanup" TERM QUIT INT EXIT

bin = "$1"
shift

for arg in "$@" ; do
    echo "$arg"
done > vhdl_argv.tmp

$bin
