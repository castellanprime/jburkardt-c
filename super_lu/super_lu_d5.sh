#!/bin/bash
#
gcc -c -g -I /$HOME/include super_lu_d5.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling super_lu_d5.c"
  exit
fi
rm compiler.txt
#
gcc super_lu_d5.o -L/$HOME/libc/$ARCH -lsuper_lu -lcxml -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading super_lu_d5.o"
  exit
fi
#
rm super_lu_d5.o
#
mv a.out super_lu_d5
./super_lu_d5 < g10_rua.txt > super_lu_d5_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running super_lu_d5"
  exit
fi
rm super_lu_d5
#
echo "Program output written to super_lu_d5_output.txt"
