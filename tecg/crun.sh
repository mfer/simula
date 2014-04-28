#! /bin/sh
f=src/pr_$1_$2
b=`basename $f .c`
gcc -O -I./src -o $b src/$b.c -lm
cp data/$b.in $b.in
./$b | tee $b.out
