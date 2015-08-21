cd crlibm
make clean
make
cd ..

#Use x87 -- remember to include #def XP from cosCalc
# and also to remove these flags in crlim/Makefile:CFLAGS
#gcc cosCalc.c -o cosCalc crlibm/crlibm.a -m32 -Wall

#Use SSE -- remember to remove "#def XP" from cosCalc.c
# and also to add these flags in crlim/Makefile:CFLAGS
#gcc cosCalc.c -o cosCalc crlibm/crlibm.a -m32 -Wall -mfpmath=sse -msse2 -g 

#Use ICC instead of GCC
#icc cosCalc.c -o cosCalc crlibm/crlibm.a -m32 -Wall 

#gcc printfbug.c -o printfbug -m32 -Wall # -mfpmath=sse -msse2 -g



gcc microtest2.c -o microtest2_$(gcc -dumpversion) crlibm/crlibm.a -m32 -Wall -g
