cd crlibm
make clean
make
cd ..

gcc microtest.c -o microtest_$(gcc -dumpversion) crlibm/crlibm.a -m32 -Wall -g #-mfpmath=sse -msse2 -g 
