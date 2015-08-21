#include "crlibm/crlibm.h"
#include <stdio.h>
#include <stdint.h>

#define XP

int main(){
  
#ifdef XP
  disable_xp_();
#endif

  union{
    double d;
    uint64_t u;
  } y,pi;
  printf("Calling atan_rn(1.0)\n");
  pi.d = 4.0*atan_rn(1.0);
  printf("Done.\n\n");
  
  printf("Calling cos_rn(...)\n");
  y.d = cos_rn( (2*pi.d)*((double)104507)/1.2494 + 0.0 );
  printf("Done.\n\n");
  
#ifdef XP
  enable_xp_();
#endif
  printf("%.20E %#018llX\n", pi.d, pi.u);
  printf("%.20E %#018llX\n", y.d, y.u);
#ifdef XP
  disable_xp_();
#endif

  return 0;
}
