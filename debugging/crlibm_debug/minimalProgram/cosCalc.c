#include "crlibm/crlibm.h"
#include <stdio.h>
#include <stdint.h>

#define XP

int main(){
  
#ifdef XP
  disable_xp_();
#endif

  union {
    double d;
    uint64_t u;
  } phi, y, sum;
  double pi = 4.0*atan_rn(1.0);
  sum.d = 0.0;
  
  const char* const fname = "cosdata.dat";
  FILE *fp = fopen(fname,"w");
  
  int nMax = 150000;
  int i = 0;
  for (i = 0; i<nMax;i++){
    phi.d = (2*pi)*((double)i)/1.2494 + 0.0;
    y.d = cos_rn(phi.d);
    sum.d += y.d;
    
#ifdef XP
    enable_xp_();
#endif
    fprintf(fp,"%10i %.20E %#018llX %.20E %#018llX\n",i, phi.d,phi.u, y.d,y.u);
#ifdef XP
    disable_xp_();
#endif
  }

  fclose(fp);


#ifdef XP
  enable_xp_();
#endif
  printf("sum = %30.20f (%#018llX)\n",sum.d, sum.u);
  
  return 0;
}
