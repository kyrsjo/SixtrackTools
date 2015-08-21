#include <stdio.h>

#include <fpu_control.h>

void disable_xp_(void)
{
  /* Set FPU flags to use double, not double extended,
     with rounding to nearest */
  short unsigned int cw = (_FPU_DEFAULT & ~_FPU_EXTENDED)|_FPU_DOUBLE;
  _FPU_SETCW(cw);
}


#define RR_DD_MCH -1.22718463030851293593670447990007232874631881713867e-02

#define Mul12(rh,rl,u,v)                        \
{                                               \
  printf("Mul12\n");							\
  printf("rh=%.20e, rl=%.20e, u=%.20e, v=%.20e\n",*rh, *rl, u, v);	\
  const double c  = 134217729.; /* 2^27 +1 */   \
  double up, u1, u2, vp, v1, v2;                \
  double _u =u, _v=v;                           \
  printf("_u=%.20e, _v=%.20e\n", _u, _v);	\
						\
  up = _u*c;        vp = _v*c;                  \
  printf("up=%.20e vp=%.20e\n",up,vp);	\
  u1 = (_u-up)+up;  v1 = (_v-vp)+vp;            \
  printf("u1=%.20e v1=%.20e\n",up,vp);	\
  u2 = _u-u1;       v2 = _v-v1;                 \
  printf("u2=%.20e v2=%.20e\n",up,vp);	\
                                                \
  *rh = _u*_v;                                  \
  *rl = (((u1*v1-*rh)+(u1*v2))+(u2*v1))+(u2*v2);	\
  printf("rh=%.20e,rl=%.20e\n",*rh,*rl);				\
  printf("expr=%.20e\n", (((u1*v1-*rh)+(u1*v2))+(u2*v1))+(u2*v2));	\
  printf("expr=%.20e\n", ((((u1*v1)-*rh)+(u1*v2))+(u2*v1))+(u2*v2));	\
}

int main() {
  double kd;
  
  double kch_h,kch_l, kcm_h,kcm_l,  th, tl;

  //disable_xp_();

  kch_h = 0.0;
  kch_l = 0.0;
  kd=4.28266240000000000000e+07;
  printf("kch_h=%.20e kch_l=%.20e kd=%.20e\n\n",kch_h,kch_l,kd);
  Mul12(&kch_h, &kch_l,   kd, RR_DD_MCH);
  printf("kch_h=%.20e kch_l=%.20e kd=%.20e\n",kch_h,kch_l,kd);//KCH_L is quite different!
}
