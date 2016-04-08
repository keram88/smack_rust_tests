#!/bin/bash
INTRINSICS_FILE=foo.ll

for f in *.rs
do
    smack -bc ${f}.bc $f
done

for f in *.bc
do
    echo 'Linking ' $f
    llvm-link $f $INTRINSICS_FILE -o $f
done
