#include "crlibm/scs.h"
#include "crlibm/scs_private.h"
#include "crlibm/trigo_fast.h"
#include "crlibm/cosine.h"
#include <stdio.h>
#include <stdint.h>

#define XP
#ifdef XP
#include <fpu_control.h>

void enable_xp_(void)
{
  /* Set FPU flags to use not double but extended,
     with rounding to nearest */
  short unsigned int cw = (_FPU_DEFAULT & ~_FPU_DOUBLE)|_FPU_EXTENDED;
  _FPU_SETCW(cw);
}
void disable_xp_(void)
{
  /* Set FPU flags to use double, not double extended,
     with rounding to nearest */
  short unsigned int cw = (_FPU_DEFAULT & ~_FPU_EXTENDED)|_FPU_DOUBLE;
  _FPU_SETCW(cw);
}

#endif



//Defined in crlibm/trigo_fast.h
/* 
   int static trig_range_reduction(double* pyh, double* pyl, 
				double x, int absxhi, 
				  double (*scs_fun)(double)   );
*/

int static trig_range_reduction(double* pyh, double* pyl, 
				double x, int absxhi, 
				double (*scs_fun)(double)   ) {
  int k;
  double kd;
  if  (absxhi < XMAX_CODY_WAITE_3) {
    DOUBLE2INT(k, x * INV_PIO256);
    kd = (double) k;
    if(((k&127) == 0)) { 
      /* Here we risk a large cancellation on yh+yl; 
	 on the other hand we will have sa=0 and ca=1*/
      double kch_h,kch_l, kcm_h,kcm_l,  th, tl;
      /* TODO : improve this code by pre-splitting CH,  CM and k (as an int) 
	 Then you can improve the precision by taking kmax into account */
      /* all this is exact */
      Mul12(&kch_h, &kch_l,   kd, RR_DD_MCH);
      Mul12(&kcm_h, &kcm_l,   kd, RR_DD_MCM);
      Add12 (th,tl,  kch_l, kcm_h) ;
      /* only rounding error in the last multiplication and addition */ 
      Add22 (pyh, pyl,    (x + kch_h) , (kcm_l - kd*RR_DD_CL),   th, tl) ;
    } 
    else {      
      /* Argument reduction  by Cody & Waite algorithm */ 
      /* Here we do not care about cancellations on *pyh+yl */
      if (absxhi < XMAX_CODY_WAITE_2) { 
	/* all this is exact but the rightmost multiplication */
	Add12 (*pyh,*pyl,  (x - kd*RR_CW2_CH),  (kd*RR_CW2_MCL) ) ;
      }
     else 
       /* all this is exact but the rightmost multiplication */
       Add12Cond(*pyh,*pyl,  (x - kd*RR_CW3_CH) -  kd*RR_CW3_CM,   kd*RR_CW3_MCL);
    }
  }
  else  if ( absxhi < XMAX_DDRR ) {
    long long int kl;
    double kch_h,kch_l, kcm_h,kcm_l,  th, tl;
    DOUBLE2LONGINT(kl, x*INV_PIO256);
    kd=(double)kl;
    k = (int) kl;
#if DEBUG
    printf("kl=%lld  \n", kl);
#endif
    if((k&127) == 0) { 
      scs_t X, Y,Yh,Yl;
      scs_set_d(X, x*128.0); 
      k= rem_pio2_scs(Y, X);
      /* TODO an optimized procedure for the following */
      scs_get_d(pyh, Y);
      scs_set_d(Yh, *pyh);
      scs_sub(Yl, Y,Yh);
      scs_get_d(pyl, Yl);
      *pyh = *pyh * (1./128.) ;
      *pyl = *pyl * (1./128.) ;
    } 
    else {
      /* all this is exact */
      Mul12(&kch_h, &kch_l,   kd, RR_DD_MCH);
      Mul12(&kcm_h, &kcm_l,   kd, RR_DD_MCM);
      Add12 (th,tl,  kch_l, kcm_h) ;
      /* only rounding error in the last multiplication and addition */ 
      Add22 (pyh, pyl,    (x + kch_h) , (kcm_l - kd*RR_DD_CL),   th, tl) ;
    }
  }
  else {
    scs_t X, Y,Yh,Yl;
    if (absxhi > 0x7F700000) /*2^(1023-7)*/
      return (*scs_fun)(x);
    else {      
      scs_set_d(X, x*128.0); 
      k= rem_pio2_scs(Y, X);
      /* TODO an optimized procedure for the following */
      scs_get_d(pyh, Y);
      scs_set_d(Yh, *pyh);
      scs_sub(Yl, Y,Yh);
      scs_get_d(pyl, Yl);
      *pyh = *pyh * (1./128.) ;
      *pyl = *pyl * (1./128.) ;
    } 
  }
 return k;
}


//Defined in cosine.c
extern double scs_cos_rn(double x);

void inline printDX(double x){
  union {
    double d;
    uint64_t u;
  }xc;
  xc.d = x;

#ifdef XP
  enable_xp_();
#endif
  printf("%.20E %#018llX\n", xc.d, xc.u);
#ifdef XP
  disable_xp_();
#endif
}

int main(){
  
#ifdef XP
  disable_xp_();
#endif

  double theta,pi;
  pi = 4.0*atan_rn(1.0);
  theta = (2*pi)*((double)104507)/1.2494 + 0.0;
  
  
  //The part which seems to fail
  double yh,yl,x;
  int absxhi;
  db_number xx;
  x = theta;
  xx.d=x;
  absxhi = xx.i[HI_ENDIAN] & 0x7fffffff;
  
  printDX(x);
  
  trig_range_reduction(&yh, &yl,  x, absxhi, &scs_cos_rn);
  
  printDX(yh);
  printDX(yl);
  printDX(x);
  return 0;
}
