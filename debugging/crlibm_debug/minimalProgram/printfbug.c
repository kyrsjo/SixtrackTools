#include <stdio.h>
#include <stdint.h>

/* Lesson learned: When compiling with -m32, use %llu and %llX to represent 64 bit ints.
                   When compiling with -m64, use %lu for the same.
   Reason: In 32-bit, uint64_t is "long long unsigned int", but just "long unsigned int" in 64-bit
   
   Also, -Wall is a nice option...
*/
		   

int main() {
  
  union {
    double d;
    uint64_t u;
  } x;
  
  printf("Union stuff part 1:\n");

  printf("sizes = %lu,%lu,%lu,%lu\n", sizeof(double), sizeof(uint64_t),sizeof(x), sizeof(long unsigned int));
  printf("Addresses   = %lX (%p) \n", &x, &x);
  printf("Addresses.d = %lX (%p) \n", &(x.d),&(x.d) );
  printf("Addresses.u = %lX (%p) \n", &(x.u),&(x.u) );
  printf("\n");

  printf("Setting x.d=0.1:\n");
  x.d = 0.1;
  printf("x.d           = %.30f\n",x.d);
  printf("x.u           = 0x%#016lX \n",x.u);
  printf("x_cast_uint64t= 0x%016lX\n", *((uint64_t*)&x.d));
  printf("\n");

  printf("Setting x.d=1.0:\n");
  x.d = 1.0;
  printf("x.d           = %.30f\n",x.d);
  printf("x.u           = 0x%#016lX \n",x.u);
  printf("x_cast_uint64t= 0x%016lX\n", *((uint64_t*)&x.d));
  printf("\n");


  printf("Setting x.u=10 (0xA):\n");
  x.u = 10;
  printf("x.u           = 0x%016lX\n",x.u);
  printf("x.d           = %.30f\n",x.d);
  printf("x.u           = 0x%016lX\n",x.u);
  printf("x_cast_double = %.30f\n", *((double*)&x.u));
  printf("\n");
  printf("\n");

  printf("Setting x.u=0xFFFFFFFFFFFFFFFF:\n");
  x.u = 0xFFFFFFFFFFFFFFFF;
  printf("x.u           = 0x%016lX\n",x.u);
  printf("x.d           = %f\n",x.d);
  printf("x.u           = 0x%016lX\n",x.u);
  printf("x_cast_double = %f\n", *((double*)&x.u));
  printf("\n");
  printf("\n");

  printf("Setting x.u=0xFFFFFFFFFFFFFFFF-1:\n");
  x.u = 0xFFFFFFFFFFFFFFFF-1;
  printf("x.d           = %f\n",x.d);
  printf("x.u           = 0x%016lX\n",x.u);
  printf("x_cast_double = %f\n", *((double*)&x.u));
  printf("\n");
  printf("\n");

  printf("Setting x.u=0x0:\n");
  x.u = 0x0;
  printf("x.u           = 0x%016lX\n",x.u);
  printf("x.d           = %f\n",x.d);
  printf("x_cast_double = %f\n", *((double*)&x.u));
  printf("\n");
  printf("\n");

  printf("Setting x.u=0xA000000000000000:\n");
  x.u = 0xA000000000000000;
  printf("x.d           = %f\n",x.d);
  printf("x.u           = 0x%016lX\n",x.u);
  printf("x_cast_double = %f\n", *((double*)&x.u));
  printf("\n");
  printf("\n");

  
  printf("Non-union stuff:\n");
  
  double ad;
  uint64_t au;

  ad = 123.0;
  au = *((uint64_t*)&ad);
  
  printf("ad=%20e\n",ad);
  printf("au=0x%016lX",au);
  printf(" = %lu\n",au);

  char* ac = (char*)&ad;
  printf("ac=0x %02x %02x %02x %02x %02x %02x %02x %02x\n",ac[0],ac[1],ac[2],ac[3],ac[4],ac[5],ac[6],ac[7]); //each two chars should be flipped due to endianness

  printf("&ad = %p\n", &ad);
  printf(" ac = %p\n", ac);

  printf("ad=%20e\n",ad);

  ac[0]=0;
  ac[1]=0;
  ac[2]=0;
  ac[3]=0;
  printf("ac=0x %02x %02x %02x %02x %02x %02x %02x %02x\n",ac[0],ac[1],ac[2],ac[3],ac[4],ac[5],ac[6],ac[7]);
  printf("ad=%.20e\n",ad);

  ac[0]=1;
  ac[1]=2;
  ac[2]=3;
  ac[3]=4;
  ac[4]=5;
  ac[5]=6;
  ac[6]=7;
  ac[7]=8;
  printf("ac=0x %02x %02x %02x %02x %02x %02x %02x %02x\n",ac[0],ac[1],ac[2],ac[3],ac[4],ac[5],ac[6],ac[7]);
  printf("ad=%20e\n",ad);

  printf("\n\n\n");

  printf ("Union stuff, part 2\n");
  union {
    double d;
    uint64_t u;
    uint32_t u2[2];
  } q,r;

  printf("Setting q=1.0,r=2.0:\n");
  q.d=1.0;
  r.d=2.0;
  printf("q.d=%20e\n",q.d);
  printf("q.u=%#018lX\n",q.u);
  printf("q.u=%lu\n",q.u);
  printf("r.d=%20e\n",r.d);
  printf("r.u=%#018lX=%lu\n",r.u,r.u);
  printf("\n");
  printf("q.d = %20e,    q.u = %#018lX\n",q.d,q.u);
  printf("q.u = %#018lX, q.d = %20e   \n",q.u,q.d);
  printf("r.d = %20e,    r.u = %#018lX\n",r.d,r.u);
  printf("r.u = %#018lX, r.d = %20e   \n",r.u,r.d);
  printf("\n");
  printf("q.u=%#018lX, r.u=%#018lX\n",q.u,r.u);
  printf("r.u=%#018lX, q.u=%#018lX\n",r.u,q.u);
  printf("\n");

  return 0;
}
