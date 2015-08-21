   1              		.file	"trigo_fast.c"
   2              	# GNU C (GCC) version 4.4.7 20120313 (Red Hat 4.4.7-11) (x86_64-redhat-linux)
   3              	#	compiled by GNU C version 4.4.7 20120313 (Red Hat 4.4.7-11), GMP version 4.3.1, MPFR version 2.4.
   4              	# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
   5              	# options passed:  -I. -imultilib 32 -DLINUX_INLINE -DHAVE_CONFIG_H
   6              	# trigo_fast.c -m32 -mtune=generic -march=i686 -g -O1 -Wall -Wshadow
   7              	# -Wpointer-arith -Wcast-align -Wconversion -Waggregate-return
   8              	# -Wstrict-prototypes -Wnested-externs -Wlong-long -Winline -pedantic
   9              	# -std=c99 -fPIC -fno-strict-aliasing -fverbose-asm
  10              	# options enabled:  -fPIC -falign-loops -fargument-alias -fauto-inc-dec
  11              	# -fbranch-count-reg -fcommon -fcprop-registers -fdefer-pop
  12              	# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
  13              	# -ffunction-cse -fgcse-lm -fguess-branch-probability -fident
  14              	# -fif-conversion -fif-conversion2 -finline -finline-functions-called-once
  15              	# -fipa-pure-const -fipa-reference -fira-share-save-slots
  16              	# -fira-share-spill-slots -fivopts -fkeep-static-consts
  17              	# -fleading-underscore -fmath-errno -fmerge-constants -fmerge-debug-strings
  18              	# -fmove-loop-invariants -fpcc-struct-return -fpeephole -fsched-interblock
  19              	# -fsched-spec -fsched-stalled-insns-dep -fsigned-zeros
  20              	# -fsplit-ivs-in-unroller -fsplit-wide-types -ftoplevel-reorder
  21              	# -ftrapping-math -ftree-ccp -ftree-ch -ftree-coalesce-vars
  22              	# -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
  23              	# -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
  24              	# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
  25              	# -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-sra
  26              	# -ftree-switch-conversion -ftree-ter -ftree-vect-loop-version
  27              	# -funit-at-a-time -fvar-tracking -fvar-tracking-assignments
  28              	# -fvect-cost-model -fverbose-asm -fzero-initialized-in-bss -m32 -m80387
  29              	# -m96bit-long-double -maccumulate-outgoing-args -malign-stringops
  30              	# -mfancy-math-387 -mfp-ret-in-387 -mfused-madd -mglibc -mieee-fp
  31              	# -mno-red-zone -mno-sse4 -mpush-args -msahf -mtls-direct-seg-refs
  32              	
  40              	.Ltext0:
  41              	# Compiler executable checksum: c4107769ffcd19d44690c951fbc131c4
  42              	
  43              		.cfi_sections	.debug_frame
  44              	.globl tan_rz
  46              	tan_rz:
  47              	.LFB21:
  48              		.file 1 "trigo_fast.c"
   0:trigo_fast.c  **** #include <stdio.h>
   1:trigo_fast.c  **** #include <stdlib.h>
   2:trigo_fast.c  **** #include "crlibm.h"
   3:trigo_fast.c  **** #include "crlibm_private.h"
   4:trigo_fast.c  **** #include "trigo_fast.h"
   5:trigo_fast.c  **** #include "coefpi2.h"
   6:trigo_fast.c  **** 
   7:trigo_fast.c  **** 
   8:trigo_fast.c  **** extern double scs_sin_rn(double);
   9:trigo_fast.c  **** extern double scs_sin_ru(double);
  10:trigo_fast.c  **** extern double scs_sin_rd(double);
  11:trigo_fast.c  **** extern double scs_sin_rz(double);
  12:trigo_fast.c  **** extern double scs_cos_rn(double);
  13:trigo_fast.c  **** extern double scs_cos_ru(double);
  14:trigo_fast.c  **** extern double scs_cos_rd(double);
  15:trigo_fast.c  **** extern double scs_cos_rz(double);
  16:trigo_fast.c  **** extern double scs_tan_rn(double); 
  17:trigo_fast.c  **** extern double scs_tan_rd(double);  
  18:trigo_fast.c  **** extern double scs_tan_ru(double);  
  19:trigo_fast.c  **** extern double scs_tan_rz(double);  
  20:trigo_fast.c  **** 
  21:trigo_fast.c  **** #define DEBUG 0
  22:trigo_fast.c  **** 
  23:trigo_fast.c  **** #define INLINE_SINCOS 0
  24:trigo_fast.c  **** 
  25:trigo_fast.c  **** 
  26:trigo_fast.c  **** 
  27:trigo_fast.c  **** #if INLINE_SINCOS
  28:trigo_fast.c  **** 
  29:trigo_fast.c  **** #define DO_SIN(sh,sl)  {\
  30:trigo_fast.c  ****   double thi, tlo, cahyh_h, cahyh_l, yh2;\
  31:trigo_fast.c  ****   yh2 = yh*yh;\
  32:trigo_fast.c  ****   if(sah==0.0)\
  33:trigo_fast.c  ****     { \
  34:trigo_fast.c  ****       ts = yh2 * (s3.d + yh2*(s5.d + yh2*s7.d));\
  35:trigo_fast.c  ****       Add12(sh,sl,   yh, yl+ ts*yh);\
  36:trigo_fast.c  ****     }\
  37:trigo_fast.c  ****   else {\
  38:trigo_fast.c  ****     Mul12(&cahyh_h,&cahyh_l, cah, yh);\
  39:trigo_fast.c  ****     Add12(thi, tlo,     sah,cahyh_h);\
  40:trigo_fast.c  ****     ts = yh2 * (s3.d + yh2*(s5.d + yh2*s7.d));\
  41:trigo_fast.c  ****     tc = yh2 * (c2.d + yh2*(c4.d + yh2*c6.d ));\
  42:trigo_fast.c  ****     tlo = tc*sah + (ts*cahyh_h  +(sal + (tlo + (cahyh_l  + (cal*yh + cah*yl))))) ; \
  43:trigo_fast.c  ****     Add12(sh,sl,  thi, tlo );  \
  44:trigo_fast.c  ****   }\
  45:trigo_fast.c  **** }
  46:trigo_fast.c  **** 
  47:trigo_fast.c  **** #define DO_COS(ch,cl) {\
  48:trigo_fast.c  ****   double thi, tlo, sahyh_h,sahyh_l, yh2; \
  49:trigo_fast.c  ****   yh2 = yh*yh ;\
  50:trigo_fast.c  ****   if(sah==0.0) { \
  51:trigo_fast.c  ****     tc = yh2 * (c2.d + yh2*(c4.d + yh2*c6.d ));\
  52:trigo_fast.c  ****       Add12(*ch,*cl, 1., tc);\
  53:trigo_fast.c  ****     }\
  54:trigo_fast.c  ****   else {\
  55:trigo_fast.c  ****   Mul12(&sahyh_h,&sahyh_l, sah, yh);\
  56:trigo_fast.c  ****   ts = yh2 * (s3.d + yh2*(s5.d + yh2*s7.d));\
  57:trigo_fast.c  ****   tc = yh2 * (c2.d + yh2*(c4.d + yh2*(c6.d)));\
  58:trigo_fast.c  ****   Add12(thi, tlo,  cah, -sahyh_h);\
  59:trigo_fast.c  ****   tlo = tc*cah - (ts*sahyh_h -  (cal + (tlo  - (sahyh_l + (sal*yh + sah*yl)) ))) ; \
  60:trigo_fast.c  ****   Add12(ch, cl,    thi, tlo ); \
  61:trigo_fast.c  **** }}
  62:trigo_fast.c  **** 
  63:trigo_fast.c  **** 
  64:trigo_fast.c  **** #else /* INLINE_SINCOS */
  65:trigo_fast.c  **** 
  66:trigo_fast.c  **** static double sah,sal,cah,cal;
  67:trigo_fast.c  **** 
  68:trigo_fast.c  **** 
  69:trigo_fast.c  **** static void do_sin(double* sh, double* sl, double yh, double yl) {
  70:trigo_fast.c  ****   double thi, tlo, cahyh_h, cahyh_l, yh2, ts, tc;
  71:trigo_fast.c  **** 
  72:trigo_fast.c  ****   /* Add optimizations for small yh / k  here */
  73:trigo_fast.c  **** 
  74:trigo_fast.c  ****   yh2 = yh*yh;
  75:trigo_fast.c  **** 
  76:trigo_fast.c  ****   if(sah==0.0)
  77:trigo_fast.c  ****     { /*  sa=0 and ca=1, which simplifies computations */
  78:trigo_fast.c  ****       ts = yh2 * (s3.d + yh2*(s5.d + yh2*s7.d));
  79:trigo_fast.c  ****       /* (1+ts)*(yh+yl) is an approx to sin(yh+yl) */
  80:trigo_fast.c  ****       /* Now we need to compute (1+ts)*(yh+yl) */
  81:trigo_fast.c  ****       Add12(*sh,*sl,   yh, yl+ ts*yh);
  82:trigo_fast.c  ****     }
  83:trigo_fast.c  ****   else {
  84:trigo_fast.c  ****    
  85:trigo_fast.c  ****     Mul12(&cahyh_h,&cahyh_l, cah, yh);
  86:trigo_fast.c  ****     Add12(thi, tlo, sah,cahyh_h);
  87:trigo_fast.c  ****     
  88:trigo_fast.c  ****     ts = yh2 * (s3.d + yh2*(s5.d + yh2*s7.d));
  89:trigo_fast.c  ****     /* (1+ts)*(yh+yl) is an approx to sin(yh+yl) */
  90:trigo_fast.c  ****     
  91:trigo_fast.c  ****     tc = yh2 * (c2.d + yh2*(c4.d + yh2*c6.d ));
  92:trigo_fast.c  ****     /* 1+ tc is an approx to cos(yh+yl) */
  93:trigo_fast.c  **** 
  94:trigo_fast.c  ****     /* now we compute an approximation to cos(a)sin(x) + sin(a)cos(x)   */
  95:trigo_fast.c  ****     tlo = tc*sah + (ts*cahyh_h  +(sal + (tlo + (cahyh_l  + (cal*yh + cah*yl))))) ;
  96:trigo_fast.c  ****     Add12(*sh,*sl,  thi, tlo );
  97:trigo_fast.c  ****   }
  98:trigo_fast.c  **** }
  99:trigo_fast.c  **** 
 100:trigo_fast.c  **** 
 101:trigo_fast.c  **** static void do_cos(double* ch, double* cl, double yh, double yl) {
 102:trigo_fast.c  ****   double yh2, ts, tc, thi, tlo, sahyh_h,sahyh_l; 
 103:trigo_fast.c  **** 
 104:trigo_fast.c  ****   yh2 = yh*yh ;
 105:trigo_fast.c  **** 
 106:trigo_fast.c  ****   if(sah==0.0)
 107:trigo_fast.c  ****     { /*  sa=0 and ca=1, which simplifies computations */
 108:trigo_fast.c  ****     tc = yh2 * (c2.d + yh2*(c4.d + yh2*c6.d ));
 109:trigo_fast.c  ****     /* 1+ tc is an approx to cos(yh+yl) */
 110:trigo_fast.c  **** 
 111:trigo_fast.c  ****       /* Now we need to compute 1+tc */
 112:trigo_fast.c  ****       Add12(*ch,*cl, 1., tc);
 113:trigo_fast.c  ****     }
 114:trigo_fast.c  ****   else {
 115:trigo_fast.c  ****   
 116:trigo_fast.c  ****   /* now we compute an approximation to cos(a)cos(x) - sin(a)sin(x)   */
 117:trigo_fast.c  ****   
 118:trigo_fast.c  ****   Mul12(&sahyh_h,&sahyh_l, sah, yh);
 119:trigo_fast.c  **** 
 120:trigo_fast.c  ****   ts = yh2 * (s3.d + yh2*(s5.d + yh2*s7.d));
 121:trigo_fast.c  ****   /* (1+ts)*(yh+yl) is an approx to sin(yh+yl) */
 122:trigo_fast.c  **** 
 123:trigo_fast.c  ****   tc = yh2 * (c2.d + yh2*(c4.d + yh2*(c6.d)));
 124:trigo_fast.c  ****   /* 1+ tc is an approx to cos(yh+yl) */
 125:trigo_fast.c  ****   
 126:trigo_fast.c  ****   Add12(thi, tlo,  cah, -sahyh_h);
 127:trigo_fast.c  ****   tlo = tc*cah - (ts*sahyh_h -  (cal + (tlo  - (sahyh_l + (sal*yh + sah*yl)) ))) ;
 128:trigo_fast.c  ****   Add12(*ch, *cl,    thi, tlo );
 129:trigo_fast.c  ****   }
 130:trigo_fast.c  **** }
 131:trigo_fast.c  **** 
 132:trigo_fast.c  **** #endif /* INLINE_SINCOS */
 133:trigo_fast.c  **** 
 134:trigo_fast.c  **** 
 135:trigo_fast.c  **** 
 136:trigo_fast.c  ****  
 137:trigo_fast.c  **** 
 138:trigo_fast.c  **** 
 139:trigo_fast.c  **** 
 140:trigo_fast.c  **** 
 141:trigo_fast.c  **** 
 142:trigo_fast.c  **** int static trig_range_reduction(double* pyh, double* pyl, 
 143:trigo_fast.c  **** 				double x, int absxhi, 
 144:trigo_fast.c  **** 				double (*scs_fun)(double)   ) {
 145:trigo_fast.c  ****   printf ("Inside range reduction!\n");
 146:trigo_fast.c  ****   printf ("x=%.20e absxhi=%i\n", x,absxhi);
 147:trigo_fast.c  ****   printf ("pyh=%.20e, pyl=%.20e\n", *pyh,*pyl);
 148:trigo_fast.c  ****   printf ("XMAX_CODY_WAITE_3=%i\n",XMAX_CODY_WAITE_3);
 149:trigo_fast.c  ****   printf ("INV_PIO256       =%.20e\n",INV_PIO256);
 150:trigo_fast.c  ****   printf ("RR_DD_MCH        =%.20e\n",RR_DD_MCH);
 151:trigo_fast.c  ****   int k;
 152:trigo_fast.c  ****   double kd;
 153:trigo_fast.c  ****   if  (absxhi < XMAX_CODY_WAITE_3) {
 154:trigo_fast.c  ****     DOUBLE2INT(k, x * INV_PIO256);
 155:trigo_fast.c  ****     printf("k=%i\n", k);
 156:trigo_fast.c  ****     kd = (double) k;
 157:trigo_fast.c  ****     printf("kd=%.20e\n", kd);
 158:trigo_fast.c  ****     if(((k&127) == 0)) { 
 159:trigo_fast.c  ****       printf("YES (k&127) == 0\n");
 160:trigo_fast.c  ****       /* Here we risk a large cancellation on yh+yl; 
 161:trigo_fast.c  **** 	 on the other hand we will have sa=0 and ca=1*/
 162:trigo_fast.c  ****       double kch_h,kch_l, kcm_h,kcm_l,  th, tl;
 163:trigo_fast.c  ****       /* TODO : improve this code by pre-splitting CH,  CM and k (as an int) 
 164:trigo_fast.c  **** 	 Then you can improve the precision by taking kmax into account */
 165:trigo_fast.c  ****       /* all this is exact */
 166:trigo_fast.c  ****       
 167:trigo_fast.c  ****       kch_h = 0.0;
 168:trigo_fast.c  ****       kch_l = 0.0;
 169:trigo_fast.c  **** 
 170:trigo_fast.c  ****       printf("kch_h=%.20e kch_l=%.20e kd=%.20e\n\n",kch_h,kch_l,kd);
 171:trigo_fast.c  ****       Mul12(&kch_h, &kch_l,   kd, RR_DD_MCH);
 172:trigo_fast.c  ****       printf("kch_h=%.20e kch_l=%.20e kd=%.20e\n",kch_h,kch_l,kd);//KCH_L is quite different!
 173:trigo_fast.c  **** 
 174:trigo_fast.c  ****       printf("kcm_h=%.20e kcm_l=%.20e kd=%.20e\n\n",kch_h,kch_l,kd);
 175:trigo_fast.c  ****       Mul12(&kcm_h, &kcm_l,   kd, RR_DD_MCM);
 176:trigo_fast.c  ****       printf("kcm_h=%.20e kcm_l=%.20e kd=%.20e\n\n",kch_h,kch_l,kd);
 177:trigo_fast.c  **** 
 178:trigo_fast.c  ****       Add12 (th,tl,  kch_l, kcm_h) ;
 179:trigo_fast.c  ****       /* only rounding error in the last multiplication and addition */ 
 180:trigo_fast.c  ****       Add22 (pyh, pyl,    (x + kch_h) , (kcm_l - kd*RR_DD_CL),   th, tl) ;
 181:trigo_fast.c  ****     } 
 182:trigo_fast.c  ****     else {      
 183:trigo_fast.c  ****       /* Argument reduction  by Cody & Waite algorithm */ 
 184:trigo_fast.c  ****       /* Here we do not care about cancellations on *pyh+yl */
 185:trigo_fast.c  ****       if (absxhi < XMAX_CODY_WAITE_2) { 
 186:trigo_fast.c  **** 	/* all this is exact but the rightmost multiplication */
 187:trigo_fast.c  **** 	Add12 (*pyh,*pyl,  (x - kd*RR_CW2_CH),  (kd*RR_CW2_MCL) ) ;
 188:trigo_fast.c  ****       }
 189:trigo_fast.c  ****      else 
 190:trigo_fast.c  ****        /* all this is exact but the rightmost multiplication */
 191:trigo_fast.c  ****        Add12Cond(*pyh,*pyl,  (x - kd*RR_CW3_CH) -  kd*RR_CW3_CM,   kd*RR_CW3_MCL);
 192:trigo_fast.c  ****     }
 193:trigo_fast.c  ****   }
 194:trigo_fast.c  ****   else  if ( absxhi < XMAX_DDRR ) {
 195:trigo_fast.c  ****     long long int kl;
 196:trigo_fast.c  ****     double kch_h,kch_l, kcm_h,kcm_l,  th, tl;
 197:trigo_fast.c  ****     DOUBLE2LONGINT(kl, x*INV_PIO256);
 198:trigo_fast.c  ****     kd=(double)kl;
 199:trigo_fast.c  ****     k = (int) kl;
 200:trigo_fast.c  **** #if DEBUG
 201:trigo_fast.c  ****     printf("kl=%lld  \n", kl);
 202:trigo_fast.c  **** #endif
 203:trigo_fast.c  ****     if((k&127) == 0) { 
 204:trigo_fast.c  ****       scs_t X, Y,Yh,Yl;
 205:trigo_fast.c  ****       scs_set_d(X, x*128.0); 
 206:trigo_fast.c  ****       k= rem_pio2_scs(Y, X);
 207:trigo_fast.c  ****       /* TODO an optimized procedure for the following */
 208:trigo_fast.c  ****       scs_get_d(pyh, Y);
 209:trigo_fast.c  ****       scs_set_d(Yh, *pyh);
 210:trigo_fast.c  ****       scs_sub(Yl, Y,Yh);
 211:trigo_fast.c  ****       scs_get_d(pyl, Yl);
 212:trigo_fast.c  ****       *pyh = *pyh * (1./128.) ;
 213:trigo_fast.c  ****       *pyl = *pyl * (1./128.) ;
 214:trigo_fast.c  ****     } 
 215:trigo_fast.c  ****     else {
 216:trigo_fast.c  ****       /* all this is exact */
 217:trigo_fast.c  ****       Mul12(&kch_h, &kch_l,   kd, RR_DD_MCH);
 218:trigo_fast.c  ****       Mul12(&kcm_h, &kcm_l,   kd, RR_DD_MCM);
 219:trigo_fast.c  ****       Add12 (th,tl,  kch_l, kcm_h) ;
 220:trigo_fast.c  ****       /* only rounding error in the last multiplication and addition */ 
 221:trigo_fast.c  ****       Add22 (pyh, pyl,    (x + kch_h) , (kcm_l - kd*RR_DD_CL),   th, tl) ;
 222:trigo_fast.c  ****     }
 223:trigo_fast.c  ****   }
 224:trigo_fast.c  ****   else {
 225:trigo_fast.c  ****     scs_t X, Y,Yh,Yl;
 226:trigo_fast.c  ****     if (absxhi > 0x7F700000) /*2^(1023-7)*/
 227:trigo_fast.c  ****       return (*scs_fun)(x);
 228:trigo_fast.c  ****     else {      
 229:trigo_fast.c  ****       scs_set_d(X, x*128.0); 
 230:trigo_fast.c  ****       k= rem_pio2_scs(Y, X);
 231:trigo_fast.c  ****       /* TODO an optimized procedure for the following */
 232:trigo_fast.c  ****       scs_get_d(pyh, Y);
 233:trigo_fast.c  ****       scs_set_d(Yh, *pyh);
 234:trigo_fast.c  ****       scs_sub(Yl, Y,Yh);
 235:trigo_fast.c  ****       scs_get_d(pyl, Yl);
 236:trigo_fast.c  ****       *pyh = *pyh * (1./128.) ;
 237:trigo_fast.c  ****       *pyl = *pyl * (1./128.) ;
 238:trigo_fast.c  ****     } 
 239:trigo_fast.c  ****   }
 240:trigo_fast.c  ****   printf("\n");
 241:trigo_fast.c  ****   return k;
 242:trigo_fast.c  **** }
 243:trigo_fast.c  **** 
 244:trigo_fast.c  **** 
 245:trigo_fast.c  **** 
 246:trigo_fast.c  **** 
 247:trigo_fast.c  **** 
 248:trigo_fast.c  **** 
 249:trigo_fast.c  **** 
 250:trigo_fast.c  **** 
 251:trigo_fast.c  **** /*************************************************************
 252:trigo_fast.c  ****  *************************************************************
 253:trigo_fast.c  ****  *              SIN ROUNDED  TO NEAREST			     *
 254:trigo_fast.c  ****  *************************************************************
 255:trigo_fast.c  ****  *************************************************************/ 
 256:trigo_fast.c  **** 
 257:trigo_fast.c  **** double sin_rn(double x){ 
 258:trigo_fast.c  ****   double sh, sl, yh, yl, ts;
 259:trigo_fast.c  ****   int quadrant;
 260:trigo_fast.c  ****   int k;
 261:trigo_fast.c  ****   int absxhi;
 262:trigo_fast.c  ****   db_number xx;
 263:trigo_fast.c  **** 
 264:trigo_fast.c  **** #if INLINE_SINCOS
 265:trigo_fast.c  ****   double sah,sal,cah,cal,tc;
 266:trigo_fast.c  **** #endif
 267:trigo_fast.c  **** 
 268:trigo_fast.c  ****   xx.d=x;
 269:trigo_fast.c  ****   absxhi = xx.i[HI_ENDIAN] & 0x7fffffff;
 270:trigo_fast.c  **** 
 271:trigo_fast.c  ****   if (absxhi < XMAX_SIN_FAST){
 272:trigo_fast.c  ****     if (absxhi <XMAX_RETURN_X_FOR_SIN)
 273:trigo_fast.c  ****       return x;
 274:trigo_fast.c  ****     /* Fast Taylor series */
 275:trigo_fast.c  ****     yh=x*x;
 276:trigo_fast.c  ****     ts = yh * (s3.d + yh*(s5.d + yh*(s7.d + yh*(s9.d))));
 277:trigo_fast.c  ****     Add12(sh,sl, x, ts*x);
 278:trigo_fast.c  ****     if(sh == (sh + (sl * RN_CST_SINFAST))){	
 279:trigo_fast.c  ****       return sh;
 280:trigo_fast.c  ****     }else{ 
 281:trigo_fast.c  ****       return scs_sin_rn(x); 
 282:trigo_fast.c  ****     } 
 283:trigo_fast.c  ****   }
 284:trigo_fast.c  ****   
 285:trigo_fast.c  ****   /* Otherwise : Range reduction then standard evaluation */
 286:trigo_fast.c  ****   k=trig_range_reduction(&yh, &yl,  x, absxhi, &scs_sin_rn);
 287:trigo_fast.c  ****     
 288:trigo_fast.c  ****   /* Now y_h is in -Pi/512, Pi/512 and k holds the 32 lower bits of an
 289:trigo_fast.c  ****      int such that x = yh+yl + kPi/256 */
 290:trigo_fast.c  ****   
 291:trigo_fast.c  ****   quadrant = (k>>7)&3;
 292:trigo_fast.c  ****   k=(k&127)<<2;
 293:trigo_fast.c  ****   
 294:trigo_fast.c  ****   if(k<=(64<<2)) {
 295:trigo_fast.c  ****     sah=sincosTable[k+0].d; /* sin(a), high part */
 296:trigo_fast.c  ****     sal=sincosTable[k+1].d; /* sin(a), low part */
 297:trigo_fast.c  ****     cah=sincosTable[k+2].d; /* cos(a), high part */
 298:trigo_fast.c  ****     cal=sincosTable[k+3].d; /* cos(a), low part */
 299:trigo_fast.c  ****   } else { /* cah <= sah */
 300:trigo_fast.c  ****     int k1=(128<<2) - k;
 301:trigo_fast.c  ****     cah=sincosTable[k1+0].d; /* cos(a), high part */
 302:trigo_fast.c  ****     cal=sincosTable[k1+1].d; /* cos(a), low part  */ 
 303:trigo_fast.c  ****     sah=sincosTable[k1+2].d; /* sin(a), high part */
 304:trigo_fast.c  ****     sal=sincosTable[k1+3].d; /* sin(a), low part  */
 305:trigo_fast.c  ****   }
 306:trigo_fast.c  **** 
 307:trigo_fast.c  **** #if DEBUG
 308:trigo_fast.c  **** 	printf("sah=%1.30e sal=%1.30e  \n", sah,sal);
 309:trigo_fast.c  **** 	printf("cah=%1.30e cal=%1.30e  \n", cah,cal);
 310:trigo_fast.c  **** #endif
 311:trigo_fast.c  **** 
 312:trigo_fast.c  **** #if INLINE_SINCOS
 313:trigo_fast.c  ****   if (quadrant&1){   /*compute the cos  */
 314:trigo_fast.c  ****     DO_COS(sh,sl);
 315:trigo_fast.c  ****   }
 316:trigo_fast.c  ****   else {/* compute the sine */
 317:trigo_fast.c  ****     DO_SIN(sh,sl);
 318:trigo_fast.c  ****   }
 319:trigo_fast.c  **** #else
 320:trigo_fast.c  ****   if (quadrant&1)   /*compute the cos  */
 321:trigo_fast.c  ****     do_cos(&sh, &sl,  yh,yl);
 322:trigo_fast.c  ****   else /* compute the sine */
 323:trigo_fast.c  ****     do_sin(&sh, &sl,  yh,yl);
 324:trigo_fast.c  **** #endif
 325:trigo_fast.c  ****   
 326:trigo_fast.c  ****   if(quadrant>=2) { 
 327:trigo_fast.c  ****     sh = -sh;
 328:trigo_fast.c  ****     sl = -sl;
 329:trigo_fast.c  ****   }
 330:trigo_fast.c  ****   
 331:trigo_fast.c  ****   if(sh == (sh + (sl * 1.0004))){	
 332:trigo_fast.c  ****      return sh;
 333:trigo_fast.c  ****   }else{
 334:trigo_fast.c  ****     return scs_sin_rn(x); 
 335:trigo_fast.c  ****   } 
 336:trigo_fast.c  **** 
 337:trigo_fast.c  **** }
 338:trigo_fast.c  **** 
 339:trigo_fast.c  **** /* TODO */
 340:trigo_fast.c  **** double sin_rd(double x){
 341:trigo_fast.c  **** return scs_sin_rd(x);
 342:trigo_fast.c  **** }
 343:trigo_fast.c  **** 
 344:trigo_fast.c  **** /* TODO */
 345:trigo_fast.c  **** double sin_ru(double x){ 
 346:trigo_fast.c  **** return scs_sin_ru(x);
 347:trigo_fast.c  **** }
 348:trigo_fast.c  **** 
 349:trigo_fast.c  **** /* TODO */
 350:trigo_fast.c  **** double sin_rz(double x){ 
 351:trigo_fast.c  **** return scs_sin_rz(x);
 352:trigo_fast.c  **** }
 353:trigo_fast.c  **** 
 354:trigo_fast.c  **** /*************************************************************
 355:trigo_fast.c  ****  *************************************************************
 356:trigo_fast.c  ****  *              COS ROUNDED  TO NEAREST			     *
 357:trigo_fast.c  ****  *************************************************************
 358:trigo_fast.c  ****  *************************************************************/
 359:trigo_fast.c  **** double cos_rn(double x){ 
 360:trigo_fast.c  ****   double ch, cl, yh, yl,  tc;
 361:trigo_fast.c  ****   int quadrant;
 362:trigo_fast.c  ****   int k;
 363:trigo_fast.c  ****   int absxhi;
 364:trigo_fast.c  ****   db_number xx;
 365:trigo_fast.c  **** 
 366:trigo_fast.c  **** #if INLINE_SINCOS
 367:trigo_fast.c  ****   double sah,sal,cah,cal,ts;
 368:trigo_fast.c  **** #endif
 369:trigo_fast.c  **** 
 370:trigo_fast.c  ****   xx.d=x;
 371:trigo_fast.c  ****   absxhi = xx.i[HI_ENDIAN] & 0x7fffffff;
 372:trigo_fast.c  **** 
 373:trigo_fast.c  ****   if (absxhi < XMAX_COS_FAST){
 374:trigo_fast.c  ****     if (absxhi <XMAX_RETURN_1_FOR_COS)
 375:trigo_fast.c  ****       return 1.;
 376:trigo_fast.c  ****     /* Fast Taylor series */
 377:trigo_fast.c  ****     yh=x*x;
 378:trigo_fast.c  ****     tc = yh * (c2.d + yh*(c4.d + yh*(c6.d + yh*(c8.d))));
 379:trigo_fast.c  ****     Add12(ch,cl, 1, tc);
 380:trigo_fast.c  ****     if(ch == (ch + (cl * RN_CST_COSFAST))){	
 381:trigo_fast.c  ****       return ch;
 382:trigo_fast.c  ****     }else{ 
 383:trigo_fast.c  ****       return scs_cos_rn(x); 
 384:trigo_fast.c  ****     } 
 385:trigo_fast.c  ****   }
 386:trigo_fast.c  ****   
 387:trigo_fast.c  ****   /* Otherwise : Range reduction then standard evaluation */
 388:trigo_fast.c  ****   printf ("JUST BEFORE RANGEREDUCE!\n");
 389:trigo_fast.c  ****   printf ("x=%.20e absxhi=%i\n", x,absxhi);
 390:trigo_fast.c  ****   //yh=0.0; yl=0.0; // Doesn't matter
 391:trigo_fast.c  ****   printf ("yh=%.20e, yl=%.20e\n", yh,yl);
 392:trigo_fast.c  ****   printf ("\n");
 393:trigo_fast.c  **** 
 394:trigo_fast.c  ****   k=trig_range_reduction(&yh, &yl,  x, absxhi, &scs_cos_rn);
 395:trigo_fast.c  ****   
 396:trigo_fast.c  ****   printf ("JUST AFTER RANGEREDUCE!\n");  
 397:trigo_fast.c  ****   printf ("x=%.20e absxhi=%i\n", x,absxhi);
 398:trigo_fast.c  ****   printf ("yh=%.20e, yl=%.20e\n", yh,yl);
 399:trigo_fast.c  ****   printf ("\n");
 400:trigo_fast.c  **** 
 401:trigo_fast.c  ****   /* Now y_h is in -Pi/512, Pi/512 and k holds the 32 lower bits of an
 402:trigo_fast.c  ****      int such that x = yh+yl + kPi/256 */
 403:trigo_fast.c  ****   
 404:trigo_fast.c  ****   quadrant = (k>>7)&3;
 405:trigo_fast.c  ****   k=(k&127)<<2;
 406:trigo_fast.c  ****   
 407:trigo_fast.c  ****   if(k<=(64<<2)) {
 408:trigo_fast.c  ****     sah=sincosTable[k+0].d; /* sin(a), high part */
 409:trigo_fast.c  ****     sal=sincosTable[k+1].d; /* sin(a), low part */
 410:trigo_fast.c  ****     cah=sincosTable[k+2].d; /* cos(a), high part */
 411:trigo_fast.c  ****     cal=sincosTable[k+3].d; /* cos(a), low part */
 412:trigo_fast.c  ****   } else { /* cah <= sah */
 413:trigo_fast.c  ****     int k1=(128<<2) - k;
 414:trigo_fast.c  ****     cah=sincosTable[k1+0].d; /* cos(a), high part */
 415:trigo_fast.c  ****     cal=sincosTable[k1+1].d; /* cos(a), low part  */ 
 416:trigo_fast.c  ****     sah=sincosTable[k1+2].d; /* sin(a), high part */
 417:trigo_fast.c  ****     sal=sincosTable[k1+3].d; /* sin(a), low part  */
 418:trigo_fast.c  ****   }
 419:trigo_fast.c  **** 
 420:trigo_fast.c  **** 
 421:trigo_fast.c  **** #if INLINE_SINCOS
 422:trigo_fast.c  ****   if (quadrant&1){   /*compute the cos  */
 423:trigo_fast.c  ****     DO_SIN(ch,cl);
 424:trigo_fast.c  ****   }
 425:trigo_fast.c  ****   else {/* compute the sine */
 426:trigo_fast.c  ****     DO_COS(ch,cl);
 427:trigo_fast.c  ****   }
 428:trigo_fast.c  **** #else
 429:trigo_fast.c  ****   if (quadrant&1)   /*compute the cos  */
 430:trigo_fast.c  ****     do_sin(&ch, &cl,  yh,yl);
 431:trigo_fast.c  ****   else /* compute the sine */
 432:trigo_fast.c  ****     do_cos(&ch, &cl,  yh,yl);
 433:trigo_fast.c  **** #endif
 434:trigo_fast.c  ****   
 435:trigo_fast.c  ****   if((quadrant == 1)||(quadrant == 2)) { 
 436:trigo_fast.c  ****     ch = -ch;
 437:trigo_fast.c  ****     cl = -cl;
 438:trigo_fast.c  ****   }
 439:trigo_fast.c  ****   
 440:trigo_fast.c  ****   if(ch == (ch + (cl * 1.0004))){	
 441:trigo_fast.c  ****      return ch;
 442:trigo_fast.c  ****   }else{
 443:trigo_fast.c  ****     return scs_cos_rn(x); 
 444:trigo_fast.c  ****   } 
 445:trigo_fast.c  **** 
 446:trigo_fast.c  **** }
 447:trigo_fast.c  **** 
 448:trigo_fast.c  **** 
 449:trigo_fast.c  **** /* TODO */
 450:trigo_fast.c  **** double cos_rd(double x){
 451:trigo_fast.c  **** return scs_cos_rd(x);
 452:trigo_fast.c  **** }
 453:trigo_fast.c  **** 
 454:trigo_fast.c  **** /* TODO */
 455:trigo_fast.c  **** double cos_ru(double x){ 
 456:trigo_fast.c  **** return scs_cos_ru(x);
 457:trigo_fast.c  **** }
 458:trigo_fast.c  **** 
 459:trigo_fast.c  **** /* TODO */
 460:trigo_fast.c  **** double cos_rz(double x){ 
 461:trigo_fast.c  **** return scs_cos_rz(x);
 462:trigo_fast.c  **** }
 463:trigo_fast.c  **** 
 464:trigo_fast.c  **** /*************************************************************
 465:trigo_fast.c  ****  *************************************************************
 466:trigo_fast.c  ****  *              TAN ROUNDED  TO NEAREST			     *
 467:trigo_fast.c  ****  *************************************************************
 468:trigo_fast.c  ****  *************************************************************/ 
 469:trigo_fast.c  **** double tan_rn(double x){  
 470:trigo_fast.c  ****   double reshi, reslo, sh, sl, ch, cl, kd, yh, yl;
 471:trigo_fast.c  ****   db_number y;
 472:trigo_fast.c  ****   int k, quadrant;
 473:trigo_fast.c  **** 
 474:trigo_fast.c  **** 
 475:trigo_fast.c  ****   int absxhi;
 476:trigo_fast.c  ****   db_number xx;
 477:trigo_fast.c  **** 
 478:trigo_fast.c  **** #if INLINE_SINCOS
 479:trigo_fast.c  ****   double sah,sal,cah,cal,ts,tc;
 480:trigo_fast.c  **** #endif
 481:trigo_fast.c  **** 
 482:trigo_fast.c  ****   xx.d=x;
 483:trigo_fast.c  ****   absxhi = xx.i[HI_ENDIAN] & 0x7fffffff;
 484:trigo_fast.c  **** 
 485:trigo_fast.c  ****   /* x < 2^-26  => tan(x)~x with accuracy 2^-53.2 */
 486:trigo_fast.c  ****   y.d = x;
 487:trigo_fast.c  ****     if((y.i[HI_ENDIAN]&0x7FFFFFFF) < 0x3E4BEAD3){	/* Test if |x| < (1+e)2^(-26) */
 488:trigo_fast.c  ****     #if DEBUG
 489:trigo_fast.c  ****       printf("x est plus petit que 2^-26(1+e)\n");
 490:trigo_fast.c  ****     #endif
 491:trigo_fast.c  ****       return x;
 492:trigo_fast.c  ****     }
 493:trigo_fast.c  **** 
 494:trigo_fast.c  ****     /*TODO Add polynomial for small values here */ 
 495:trigo_fast.c  ****   
 496:trigo_fast.c  ****   /* Otherwise : Range reduction then standard evaluation */
 497:trigo_fast.c  ****   k=trig_range_reduction(&yh, &yl,  x, absxhi, &scs_cos_rn);
 498:trigo_fast.c  **** 
 499:trigo_fast.c  ****   quadrant = (k>>7)&3;	/* Pi is divided in 4 quarters */	
 500:trigo_fast.c  ****   kd = (double) k;
 501:trigo_fast.c  ****   k=(k&127)<<2;
 502:trigo_fast.c  **** 
 503:trigo_fast.c  ****   switch (quadrant){
 504:trigo_fast.c  ****    case(0):
 505:trigo_fast.c  ****     #if DEBUG
 506:trigo_fast.c  ****       printf("Case 0\n");
 507:trigo_fast.c  ****     #endif
 508:trigo_fast.c  ****    if(k<=(64<<2)) {  /* sah <= cah */
 509:trigo_fast.c  ****     sah=sincosTable[k].d; /* sin(a), high part */
 510:trigo_fast.c  ****     sal=sincosTable[k+1].d; /* sin(a), low part */
 511:trigo_fast.c  ****     cah=sincosTable[k+2].d; /* cos(a), high part */
 512:trigo_fast.c  ****     cal=sincosTable[k+3].d; /* cos(a), low part */
 513:trigo_fast.c  ****   } else { /* cah <= sah */
 514:trigo_fast.c  ****     int k1=(128<<2) - k;
 515:trigo_fast.c  ****     cah=sincosTable[k1].d; 
 516:trigo_fast.c  ****     cal=sincosTable[k1+1].d;
 517:trigo_fast.c  ****     sah=sincosTable[k1+2].d;
 518:trigo_fast.c  ****     sal=sincosTable[k1+3].d;
 519:trigo_fast.c  ****   }     
 520:trigo_fast.c  ****      break;
 521:trigo_fast.c  ****    case(1):
 522:trigo_fast.c  ****     #if DEBUG
 523:trigo_fast.c  ****       printf("Case 1\n");
 524:trigo_fast.c  ****     #endif
 525:trigo_fast.c  ****      if(k<=(64<<2)) {  /* sah <= cah */
 526:trigo_fast.c  ****     cah=-sincosTable[k].d; /* sin(a), high part */
 527:trigo_fast.c  ****     cal=-sincosTable[k+1].d; /* sin(a), low part */
 528:trigo_fast.c  ****     sah=sincosTable[k+2].d; /* cos(a), high part */
 529:trigo_fast.c  ****     sal=sincosTable[k+3].d; /* cos(a), low part */
 530:trigo_fast.c  ****   } else { /* cah <= sah */
 531:trigo_fast.c  ****     int k1=(128<<2) - k;
 532:trigo_fast.c  ****     sah=sincosTable[k1].d; 
 533:trigo_fast.c  ****     sal=sincosTable[k1+1].d;
 534:trigo_fast.c  ****     cah=-sincosTable[k1+2].d;
 535:trigo_fast.c  ****     cal=-sincosTable[k1+3].d;
 536:trigo_fast.c  ****   }    
 537:trigo_fast.c  ****      break;
 538:trigo_fast.c  ****    case(2):
 539:trigo_fast.c  ****       if(k<=(64<<2)) {  /* sah <= cah */
 540:trigo_fast.c  ****     sah=-sincosTable[k].d; /* sin(a), high part */
 541:trigo_fast.c  ****     sal=-sincosTable[k+1].d; /* sin(a), low part */
 542:trigo_fast.c  ****     cah=-sincosTable[k+2].d; /* cos(a), high part */
 543:trigo_fast.c  ****     cal=-sincosTable[k+3].d; /* cos(a), low part */
 544:trigo_fast.c  ****   } else { /* cah <= sah */
 545:trigo_fast.c  ****     int k1=(128<<2) - k;
 546:trigo_fast.c  ****     cah=-sincosTable[k1].d; 
 547:trigo_fast.c  ****     cal=-sincosTable[k1+1].d;
 548:trigo_fast.c  ****     sah=-sincosTable[k1+2].d;
 549:trigo_fast.c  ****     sal=-sincosTable[k1+3].d;
 550:trigo_fast.c  ****   }    
 551:trigo_fast.c  ****    break;
 552:trigo_fast.c  ****       case(3):
 553:trigo_fast.c  ****      if(k<=(64<<2)) {  /* sah <= cah */
 554:trigo_fast.c  ****     cah=sincosTable[k].d ; /* sin(a), high part */
 555:trigo_fast.c  ****     cal=sincosTable[k+1].d; /* sin(a), low part */
 556:trigo_fast.c  ****     sah=-sincosTable[k+2].d; /* cos(a), high part */
 557:trigo_fast.c  ****     sal=-sincosTable[k+3].d; /* cos(a), low part */
 558:trigo_fast.c  ****   } else { /* cah <= sah */
 559:trigo_fast.c  ****     int k1=(128<<2) - k;
 560:trigo_fast.c  ****     sah=-sincosTable[k1].d ; 
 561:trigo_fast.c  ****     sal=-sincosTable[k1+1].d;
 562:trigo_fast.c  ****     cah=sincosTable[k1+2].d;
 563:trigo_fast.c  ****     cal=sincosTable[k1+3].d;
 564:trigo_fast.c  ****   }    
 565:trigo_fast.c  ****      break;   
 566:trigo_fast.c  ****    default:
 567:trigo_fast.c  ****      fprintf(stderr,"ERREUR: %d is not a valid value in sn_tan \n", quadrant);
 568:trigo_fast.c  ****      return 0.0;
 569:trigo_fast.c  ****   }
 570:trigo_fast.c  **** 
 571:trigo_fast.c  **** #if INLINE_SINCOS
 572:trigo_fast.c  **** DO_SIN(sh,sl);
 573:trigo_fast.c  **** DO_COS(ch,cl);
 574:trigo_fast.c  **** #else  
 575:trigo_fast.c  ****   do_sin(&sh, &sl, yh, yl);
 576:trigo_fast.c  ****   do_cos(&ch, &cl, yh, yl);
 577:trigo_fast.c  **** #endif
 578:trigo_fast.c  **** 
 579:trigo_fast.c  ****    Div22(&reshi, &reslo, sh, sl, ch, cl);
 580:trigo_fast.c  **** 
 581:trigo_fast.c  ****   /* ROUNDING TO NEAREST */
 582:trigo_fast.c  ****  
 583:trigo_fast.c  ****   if(reshi == (reshi + (reslo * 1.0004))){
 584:trigo_fast.c  ****     return reshi;
 585:trigo_fast.c  ****   }else{ 
 586:trigo_fast.c  ****     return scs_tan_rn(x); 
 587:trigo_fast.c  ****   } 
 588:trigo_fast.c  **** 
 589:trigo_fast.c  **** }
 590:trigo_fast.c  **** 
 591:trigo_fast.c  **** 
 592:trigo_fast.c  **** /*************************************************************
 593:trigo_fast.c  ****  *************************************************************
 594:trigo_fast.c  ****  *               ROUNDED  TOWARD  -INFINITY
 595:trigo_fast.c  ****  *************************************************************
 596:trigo_fast.c  ****  *************************************************************/
 597:trigo_fast.c  **** /* TODO */
 598:trigo_fast.c  **** double tan_rd(double x){  
 599:trigo_fast.c  **** return scs_tan_rd(x);
 600:trigo_fast.c  ****  }
 601:trigo_fast.c  **** 
 602:trigo_fast.c  **** /*************************************************************
 603:trigo_fast.c  ****  *************************************************************
 604:trigo_fast.c  ****  *               ROUNDED  TOWARD  +INFINITY
 605:trigo_fast.c  ****  *************************************************************
 606:trigo_fast.c  ****  *************************************************************/
 607:trigo_fast.c  **** /* TODO */
 608:trigo_fast.c  **** double tan_ru(double x){  
 609:trigo_fast.c  **** return scs_tan_ru(x);
 610:trigo_fast.c  ****  }
 611:trigo_fast.c  **** 
 612:trigo_fast.c  **** /*************************************************************
 613:trigo_fast.c  ****  *************************************************************
 614:trigo_fast.c  ****  *               ROUNDED  TOWARD  ZERO
 615:trigo_fast.c  ****  *************************************************************
 616:trigo_fast.c  ****  *************************************************************/
 617:trigo_fast.c  **** /* TODO */
 618:trigo_fast.c  **** double tan_rz(double x){  
  49              		.loc 1 619 0
  50              		.cfi_startproc
  51              	.LVL0:
  52 0000 55       		pushl	%ebp	#
  53              		.cfi_def_cfa_offset 8
  54              		.cfi_offset 5, -8
  55 0001 89E5     		movl	%esp, %ebp	#,
  56              		.cfi_def_cfa_register 5
  57 0003 53       		pushl	%ebx	#
  58 0004 83EC14   		subl	$20, %esp	#,
  59              		.cfi_offset 3, -12
  60 0007 E8FCFFFF 		call	__i686.get_pc_thunk.bx	#
  60      FF
  61 000c 81C30200 		addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
  61      0000
 619:trigo_fast.c  **** return scs_tan_rz(x);
  62              		.loc 1 620 0
  63 0012 DD4508   		fldl	8(%ebp)	# x
  64 0015 DD1C24   		fstpl	(%esp)	#
  65 0018 E8FCFFFF 		call	scs_tan_rz@PLT	#
  65      FF
 620:trigo_fast.c  ****  }
  66              		.loc 1 621 0
  67 001d 83C414   		addl	$20, %esp	#,
  68 0020 5B       		popl	%ebx	#
  69              		.cfi_restore 3
  70 0021 5D       		popl	%ebp	#
  71              		.cfi_restore 5
  72              		.cfi_def_cfa 4, 4
  73 0022 C3       		ret
  74              		.cfi_endproc
  75              	.LFE21:
  77              	.globl tan_ru
  79              	tan_ru:
  80              	.LFB20:
 609:trigo_fast.c  **** double tan_ru(double x){  
  81              		.loc 1 609 0
  82              		.cfi_startproc
  83              	.LVL1:
  84 0023 55       		pushl	%ebp	#
  85              		.cfi_def_cfa_offset 8
  86              		.cfi_offset 5, -8
  87 0024 89E5     		movl	%esp, %ebp	#,
  88              		.cfi_def_cfa_register 5
  89 0026 53       		pushl	%ebx	#
  90 0027 83EC14   		subl	$20, %esp	#,
  91              		.cfi_offset 3, -12
  92 002a E8FCFFFF 		call	__i686.get_pc_thunk.bx	#
  92      FF
  93 002f 81C30200 		addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
  93      0000
 610:trigo_fast.c  **** return scs_tan_ru(x);
  94              		.loc 1 610 0
  95 0035 DD4508   		fldl	8(%ebp)	# x
  96 0038 DD1C24   		fstpl	(%esp)	#
  97 003b E8FCFFFF 		call	scs_tan_ru@PLT	#
  97      FF
 611:trigo_fast.c  ****  }
  98              		.loc 1 611 0
  99 0040 83C414   		addl	$20, %esp	#,
 100 0043 5B       		popl	%ebx	#
 101              		.cfi_restore 3
 102 0044 5D       		popl	%ebp	#
 103              		.cfi_restore 5
 104              		.cfi_def_cfa 4, 4
 105 0045 C3       		ret
 106              		.cfi_endproc
 107              	.LFE20:
 109              	.globl tan_rd
 111              	tan_rd:
 112              	.LFB19:
 599:trigo_fast.c  **** double tan_rd(double x){  
 113              		.loc 1 599 0
 114              		.cfi_startproc
 115              	.LVL2:
 116 0046 55       		pushl	%ebp	#
 117              		.cfi_def_cfa_offset 8
 118              		.cfi_offset 5, -8
 119 0047 89E5     		movl	%esp, %ebp	#,
 120              		.cfi_def_cfa_register 5
 121 0049 53       		pushl	%ebx	#
 122 004a 83EC14   		subl	$20, %esp	#,
 123              		.cfi_offset 3, -12
 124 004d E8FCFFFF 		call	__i686.get_pc_thunk.bx	#
 124      FF
 125 0052 81C30200 		addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
 125      0000
 600:trigo_fast.c  **** return scs_tan_rd(x);
 126              		.loc 1 600 0
 127 0058 DD4508   		fldl	8(%ebp)	# x
 128 005b DD1C24   		fstpl	(%esp)	#
 129 005e E8FCFFFF 		call	scs_tan_rd@PLT	#
 129      FF
 601:trigo_fast.c  ****  }
 130              		.loc 1 601 0
 131 0063 83C414   		addl	$20, %esp	#,
 132 0066 5B       		popl	%ebx	#
 133              		.cfi_restore 3
 134 0067 5D       		popl	%ebp	#
 135              		.cfi_restore 5
 136              		.cfi_def_cfa 4, 4
 137 0068 C3       		ret
 138              		.cfi_endproc
 139              	.LFE19:
 141              		.section	.rodata.str1.1,"aMS",@progbits,1
 142              	.LC1:
 143 0000 4D756C31 		.string	"Mul12"
 143      3200
 144              		.section	.rodata.str1.4,"aMS",@progbits,1
 145              		.align 4
 146              	.LC2:
 147 0000 72683D25 		.string	"rh=%.20e, rl=%.20e, u=%.20e, v=%.20e\n"
 147      2E323065 
 147      2C20726C 
 147      3D252E32 
 147      30652C20 
 148              		.section	.rodata.str1.1
 149              	.LC3:
 150 0006 5F753D25 		.string	"_u=%.20e, _v=%.20e\n"
 150      2E323065 
 150      2C205F76 
 150      3D252E32 
 150      30650A00 
 151              	.LC5:
 152 001a 75703D25 		.string	"up=%.20e vp=%.20e\n"
 152      2E323065 
 152      2076703D 
 152      252E3230 
 152      650A00
 153              	.LC6:
 154 002d 75313D25 		.string	"u1=%.20e v1=%.20e\n"
 154      2E323065 
 154      2076313D 
 154      252E3230 
 154      650A00
 155              	.LC7:
 156 0040 75323D25 		.string	"u2=%.20e v2=%.20e\n"
 156      2E323065 
 156      2076323D 
 156      252E3230 
 156      650A00
 157              	.LC8:
 158 0053 72683D25 		.string	"rh=%.20e,rl=%.20e\n"
 158      2E323065 
 158      2C726C3D 
 158      252E3230 
 158      650A00
 159              	.LC9:
 160 0066 65787072 		.string	"expr=%.20e\n"
 160      3D252E32 
 160      30650A00 
 161              		.text
 163              	do_sin:
 164              	.LFB7:
  70:trigo_fast.c  **** static void do_sin(double* sh, double* sl, double yh, double yl) {
 165              		.loc 1 70 0
 166              		.cfi_startproc
 167              	.LVL3:
 168 0069 55       		pushl	%ebp	#
 169              		.cfi_def_cfa_offset 8
 170              		.cfi_offset 5, -8
 171 006a 89E5     		movl	%esp, %ebp	#,
 172              		.cfi_def_cfa_register 5
 173 006c 57       		pushl	%edi	#
 174 006d 56       		pushl	%esi	#
 175 006e 53       		pushl	%ebx	#
 176 006f 81EC8C00 		subl	$140, %esp	#,
 176      0000
 177              		.cfi_offset 3, -20
 178              		.cfi_offset 6, -16
 179              		.cfi_offset 7, -12
 180 0075 E8FCFFFF 		call	__i686.get_pc_thunk.bx	#
 180      FF
 181 007a 81C30200 		addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
 181      0000
 182 0080 89C6     		movl	%eax, %esi	# sh, sh
 183 0082 89D7     		movl	%edx, %edi	# sl, sl
 184 0084 DD4508   		fldl	8(%ebp)	# yh
 185 0087 DD55E0   		fstl	-32(%ebp)	# %sfp
 186 008a DD4510   		fldl	16(%ebp)	# yl
 187 008d DD5DB8   		fstpl	-72(%ebp)	# %sfp
  75:trigo_fast.c  ****   yh2 = yh*yh;
 188              		.loc 1 75 0
 189 0090 D8C8     		fmul	%st(0), %st	#,
 190 0092 DD5DD8   		fstpl	-40(%ebp)	# %sfp
 191              	.LVL4:
  77:trigo_fast.c  ****   if(sah==0.0)
 192              		.loc 1 77 0
 193 0095 D9EE     		fldz
 194              	.LVL5:
 195 0097 DD830000 		fldl	sah@GOTOFF(%ebx)	# sah
 195      0000
 196 009d DFE9     		fucomip	%st(1), %st	#,
 197 009f DDD8     		fstp	%st(0)	#
 198 00a1 7536     		jne	.L13	#,
 199 00a3 7A34     		jp	.L13	#,
 200              	.LVL6:
  82:trigo_fast.c  ****       Add12(*sh,*sl,   yh, yl+ ts*yh);
 201              		.loc 1 82 0
 202 00a5 DD45D8   		fldl	-40(%ebp)	# %sfp
 203 00a8 DC8B3008 		fmull	s7@GOTOFF(%ebx)	# s7.d
 203      0000
 204 00ae DC832808 		faddl	s5@GOTOFF(%ebx)	# s5.d
 204      0000
 205 00b4 DC4DD8   		fmull	-40(%ebp)	# %sfp
 206 00b7 DC832008 		faddl	s3@GOTOFF(%ebx)	# s3.d
 206      0000
 207 00bd DC4DD8   		fmull	-40(%ebp)	# %sfp
 208              	.LVL7:
 209              	.LBB6:
 210 00c0 DC4DE0   		fmull	-32(%ebp)	# %sfp
 211              	.LVL8:
 212 00c3 DC45B8   		faddl	-72(%ebp)	# %sfp
 213              	.LVL9:
 214 00c6 DD45E0   		fldl	-32(%ebp)	# %sfp
 215              	.LVL10:
 216 00c9 D8C1     		fadd	%st(1), %st	#,
 217 00cb DD10     		fstl	(%eax)	#* sh
 218              	.LVL11:
 219 00cd DC65E0   		fsubl	-32(%ebp)	# %sfp
 220              	.LVL12:
 221 00d0 DEE9     		fsubrp	%st, %st(1)	#,
 222 00d2 DD1A     		fstpl	(%edx)	#* sl
 223 00d4 E9BE0100 		jmp	.L11	#
 223      00
 224              	.LVL13:
 225              	.L13:
 226              	.LBE6:
 227              	.LBB7:
  86:trigo_fast.c  ****     Mul12(&cahyh_h,&cahyh_l, cah, yh);
 228              		.loc 1 86 0
 229 00d9 8D830000 		leal	.LC1@GOTOFF(%ebx), %eax	#, tmp95
 229      0000
 230              	.LVL14:
 231 00df 890424   		movl	%eax, (%esp)	# tmp95,
 232 00e2 E8FCFFFF 		call	puts@PLT	#
 232      FF
 233              	.LVL15:
 234 00e7 DD45E0   		fldl	-32(%ebp)	# %sfp
 235 00ea DD5C241C 		fstpl	28(%esp)	#
 236 00ee DD831000 		fldl	cah@GOTOFF(%ebx)	# cah
 236      0000
 237 00f4 DD5C2414 		fstpl	20(%esp)	#
 238 00f8 D9EE     		fldz
 239 00fa DD54240C 		fstl	12(%esp)	#
 240 00fe DD5C2404 		fstpl	4(%esp)	#
 241 0102 8D830000 		leal	.LC2@GOTOFF(%ebx), %eax	#, tmp97
 241      0000
 242 0108 890424   		movl	%eax, (%esp)	# tmp97,
 243 010b E8FCFFFF 		call	printf@PLT	#
 243      FF
 244              	.LVL16:
 245 0110 DD831000 		fldl	cah@GOTOFF(%ebx)	# cah
 245      0000
 246 0116 DD55D0   		fstl	-48(%ebp)	# %sfp
 247              	.LVL17:
 248 0119 DD45E0   		fldl	-32(%ebp)	# %sfp
 249 011c DD5C240C 		fstpl	12(%esp)	#
 250 0120 DD5C2404 		fstpl	4(%esp)	#
 251 0124 8D830000 		leal	.LC3@GOTOFF(%ebx), %eax	#, tmp98
 251      0000
 252 012a 890424   		movl	%eax, (%esp)	# tmp98,
 253 012d E8FCFFFF 		call	printf@PLT	#
 253      FF
 254              	.LVL18:
 255 0132 DD830000 		fldl	.LC4@GOTOFF(%ebx)	#
 255      0000
 256 0138 DD45D0   		fldl	-48(%ebp)	# %sfp
 257 013b D8C9     		fmul	%st(1), %st	#,
 258 013d DD55C0   		fstl	-64(%ebp)	# %sfp
 259 0140 D9C9     		fxch	%st(1)	#
 260              	.LVL19:
 261 0142 DC4DE0   		fmull	-32(%ebp)	# %sfp
 262 0145 DD55C8   		fstl	-56(%ebp)	# %sfp
 263              	.LVL20:
 264 0148 DD5C240C 		fstpl	12(%esp)	#
 265 014c DD5C2404 		fstpl	4(%esp)	#
 266 0150 8D830000 		leal	.LC5@GOTOFF(%ebx), %eax	#, tmp101
 266      0000
 267 0156 890424   		movl	%eax, (%esp)	# tmp101,
 268 0159 E8FCFFFF 		call	printf@PLT	#
 268      FF
 269              	.LVL21:
 270 015e DD45D0   		fldl	-48(%ebp)	# %sfp
 271 0161 DC65C0   		fsubl	-64(%ebp)	# %sfp
 272 0164 DC45C0   		faddl	-64(%ebp)	# %sfp
 273 0167 DD5DA8   		fstpl	-88(%ebp)	# %sfp
 274              	.LVL22:
 275 016a DD45E0   		fldl	-32(%ebp)	# %sfp
 276              	.LVL23:
 277 016d DC65C8   		fsubl	-56(%ebp)	# %sfp
 278 0170 DC45C8   		faddl	-56(%ebp)	# %sfp
 279 0173 DD5DB0   		fstpl	-80(%ebp)	# %sfp
 280              	.LVL24:
 281 0176 DD45C8   		fldl	-56(%ebp)	# %sfp
 282              	.LVL25:
 283 0179 DD5C240C 		fstpl	12(%esp)	#
 284 017d DD45C0   		fldl	-64(%ebp)	# %sfp
 285 0180 DD5C2404 		fstpl	4(%esp)	#
 286 0184 8D830000 		leal	.LC6@GOTOFF(%ebx), %eax	#, tmp104
 286      0000
 287 018a 890424   		movl	%eax, (%esp)	# tmp104,
 288 018d E8FCFFFF 		call	printf@PLT	#
 288      FF
 289 0192 DD45D0   		fldl	-48(%ebp)	# %sfp
 290 0195 DC65A8   		fsubl	-88(%ebp)	# %sfp
 291 0198 DD5D98   		fstpl	-104(%ebp)	# %sfp
 292              	.LVL26:
 293 019b DD45E0   		fldl	-32(%ebp)	# %sfp
 294              	.LVL27:
 295 019e DC65B0   		fsubl	-80(%ebp)	# %sfp
 296 01a1 DD5DA0   		fstpl	-96(%ebp)	# %sfp
 297              	.LVL28:
 298 01a4 DD45C8   		fldl	-56(%ebp)	# %sfp
 299              	.LVL29:
 300 01a7 DD5C240C 		fstpl	12(%esp)	#
 301 01ab DD45C0   		fldl	-64(%ebp)	# %sfp
 302 01ae DD5C2404 		fstpl	4(%esp)	#
 303 01b2 8D830000 		leal	.LC7@GOTOFF(%ebx), %eax	#, tmp105
 303      0000
 304 01b8 890424   		movl	%eax, (%esp)	# tmp105,
 305 01bb E8FCFFFF 		call	printf@PLT	#
 305      FF
 306 01c0 DD45E0   		fldl	-32(%ebp)	# %sfp
 307 01c3 DC4DD0   		fmull	-48(%ebp)	# %sfp
 308 01c6 DD5DD0   		fstpl	-48(%ebp)	# %sfp
 309              	.LVL30:
 310 01c9 DD45A8   		fldl	-88(%ebp)	# %sfp
 311              	.LVL31:
 312 01cc DC4DB0   		fmull	-80(%ebp)	# %sfp
 313 01cf DC65D0   		fsubl	-48(%ebp)	# %sfp
 314 01d2 DD45A8   		fldl	-88(%ebp)	# %sfp
 315 01d5 DC4DA0   		fmull	-96(%ebp)	# %sfp
 316 01d8 DEC1     		faddp	%st, %st(1)	#,
 317 01da DD4598   		fldl	-104(%ebp)	# %sfp
 318 01dd DC4DB0   		fmull	-80(%ebp)	# %sfp
 319 01e0 DEC1     		faddp	%st, %st(1)	#,
 320 01e2 DD4598   		fldl	-104(%ebp)	# %sfp
 321 01e5 DC4DA0   		fmull	-96(%ebp)	# %sfp
 322 01e8 DEC1     		faddp	%st, %st(1)	#,
 323 01ea DD55C8   		fstl	-56(%ebp)	# %sfp
 324              	.LVL32:
 325 01ed DD5C240C 		fstpl	12(%esp)	#
 326 01f1 DD45D0   		fldl	-48(%ebp)	# %sfp
 327              	.LVL33:
 328 01f4 DD5C2404 		fstpl	4(%esp)	#
 329 01f8 8D830000 		leal	.LC8@GOTOFF(%ebx), %eax	#, tmp113
 329      0000
 330 01fe 890424   		movl	%eax, (%esp)	# tmp113,
 331 0201 E8FCFFFF 		call	printf@PLT	#
 331      FF
 332 0206 DD45C8   		fldl	-56(%ebp)	# %sfp
 333 0209 DD5C2404 		fstpl	4(%esp)	#
 334 020d 8D830000 		leal	.LC9@GOTOFF(%ebx), %eax	#, tmp114
 334      0000
 335 0213 890424   		movl	%eax, (%esp)	# tmp114,
 336 0216 E8FCFFFF 		call	printf@PLT	#
 336      FF
 337              	.LBE7:
 338              	.LBB8:
  87:trigo_fast.c  ****     Add12(thi, tlo, sah,cahyh_h);
 339              		.loc 1 87 0
 340 021b DD830000 		fldl	sah@GOTOFF(%ebx)	# sah
 340      0000
 341              	.LVL34:
 342 0221 DD45D0   		fldl	-48(%ebp)	# %sfp
 343 0224 D8C1     		fadd	%st(1), %st	#,
 344              	.LVL35:
 345              	.LBE8:
  96:trigo_fast.c  ****     tlo = tc*sah + (ts*cahyh_h  +(sal + (tlo + (cahyh_l  + (cal*yh + cah*yl))))) ;
 346              		.loc 1 96 0
 347 0226 DD45D8   		fldl	-40(%ebp)	# %sfp
 348              	.LVL36:
 349 0229 DC8B3008 		fmull	s7@GOTOFF(%ebx)	# s7.d
 349      0000
 350 022f DC832808 		faddl	s5@GOTOFF(%ebx)	# s5.d
 350      0000
 351 0235 DC4DD8   		fmull	-40(%ebp)	# %sfp
 352 0238 DC832008 		faddl	s3@GOTOFF(%ebx)	# s3.d
 352      0000
 353 023e DC4DD8   		fmull	-40(%ebp)	# %sfp
 354              	.LVL37:
 355 0241 DC4DD0   		fmull	-48(%ebp)	# %sfp
 356              	.LVL38:
 357 0244 DD45E0   		fldl	-32(%ebp)	# %sfp
 358 0247 DC8B1800 		fmull	cal@GOTOFF(%ebx)	# cal
 358      0000
 359 024d DD45B8   		fldl	-72(%ebp)	# %sfp
 360 0250 DC8B1000 		fmull	cah@GOTOFF(%ebx)	# cah
 360      0000
 361 0256 DEC1     		faddp	%st, %st(1)	#,
 362 0258 DC45C8   		faddl	-56(%ebp)	# %sfp
 363              	.LBB9:
 364 025b D9C2     		fld	%st(2)	#
 365 025d D8E4     		fsub	%st(4), %st	#,
 366 025f DC6DD0   		fsubrl	-48(%ebp)	# %sfp
 367              	.LBE9:
 368 0262 DEC1     		faddp	%st, %st(1)	#,
 369 0264 DC830800 		faddl	sal@GOTOFF(%ebx)	# sal
 369      0000
 370 026a DEC1     		faddp	%st, %st(1)	#,
 371 026c DD45D8   		fldl	-40(%ebp)	# %sfp
 372 026f DC8B4808 		fmull	c6@GOTOFF(%ebx)	# c6.d
 372      0000
 373 0275 DC834008 		faddl	c4@GOTOFF(%ebx)	# c4.d
 373      0000
 374 027b DC4DD8   		fmull	-40(%ebp)	# %sfp
 375 027e DC833808 		faddl	c2@GOTOFF(%ebx)	# c2.d
 375      0000
 376 0284 DC4DD8   		fmull	-40(%ebp)	# %sfp
 377              	.LVL39:
 378 0287 DECB     		fmulp	%st, %st(3)	#,
 379 0289 DEC2     		faddp	%st, %st(2)	#,
 380              	.LVL40:
 381              	.LBB10:
  97:trigo_fast.c  ****     Add12(*sh,*sl,  thi, tlo );
 382              		.loc 1 97 0
 383 028b D9C0     		fld	%st(0)	#
 384 028d D8C2     		fadd	%st(2), %st	#,
 385              	.LVL41:
 386 028f DD16     		fstl	(%esi)	#* sh
 387              	.LVL42:
 388 0291 DEE1     		fsubp	%st, %st(1)	#,
 389              	.LVL43:
 390 0293 DEE9     		fsubrp	%st, %st(1)	#,
 391              	.LVL44:
 392 0295 DD1F     		fstpl	(%edi)	#* sl
 393              	.LVL45:
 394              	.L11:
 395              	.LBE10:
  99:trigo_fast.c  **** }
 396              		.loc 1 99 0
 397 0297 81C48C00 		addl	$140, %esp	#,
 397      0000
 398 029d 5B       		popl	%ebx	#
 399              		.cfi_restore 3
 400 029e 5E       		popl	%esi	#
 401              		.cfi_restore 6
 402              	.LVL46:
 403 029f 5F       		popl	%edi	#
 404              		.cfi_restore 7
 405              	.LVL47:
 406 02a0 5D       		popl	%ebp	#
 407              		.cfi_restore 5
 408              		.cfi_def_cfa 4, 4
 409 02a1 C3       		ret
 410              		.cfi_endproc
 411              	.LFE7:
 414              	do_cos:
 415              	.LFB8:
 102:trigo_fast.c  **** static void do_cos(double* ch, double* cl, double yh, double yl) {
 416              		.loc 1 102 0
 417              		.cfi_startproc
 418              	.LVL48:
 419 02a2 55       		pushl	%ebp	#
 420              		.cfi_def_cfa_offset 8
 421              		.cfi_offset 5, -8
 422 02a3 89E5     		movl	%esp, %ebp	#,
 423              		.cfi_def_cfa_register 5
 424 02a5 57       		pushl	%edi	#
 425 02a6 56       		pushl	%esi	#
 426 02a7 53       		pushl	%ebx	#
 427 02a8 81EC8C00 		subl	$140, %esp	#,
 427      0000
 428              		.cfi_offset 3, -20
 429              		.cfi_offset 6, -16
 430              		.cfi_offset 7, -12
 431 02ae E8FCFFFF 		call	__i686.get_pc_thunk.bx	#
 431      FF
 432 02b3 81C30200 		addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
 432      0000
 433 02b9 89C6     		movl	%eax, %esi	# ch, ch
 434 02bb 89D7     		movl	%edx, %edi	# cl, cl
 435 02bd DD4508   		fldl	8(%ebp)	# yh
 436 02c0 DD55E0   		fstl	-32(%ebp)	# %sfp
 437 02c3 DD4510   		fldl	16(%ebp)	# yl
 438 02c6 DD5DA8   		fstpl	-88(%ebp)	# %sfp
 105:trigo_fast.c  ****   yh2 = yh*yh ;
 439              		.loc 1 105 0
 440 02c9 D8C8     		fmul	%st(0), %st	#,
 441 02cb DD5DD8   		fstpl	-40(%ebp)	# %sfp
 442              	.LVL49:
 107:trigo_fast.c  ****   if(sah==0.0)
 443              		.loc 1 107 0
 444 02ce D9EE     		fldz
 445              	.LVL50:
 446 02d0 DD830000 		fldl	sah@GOTOFF(%ebx)	# sah
 446      0000
 447 02d6 DFE9     		fucomip	%st(1), %st	#,
 448 02d8 DDD8     		fstp	%st(0)	#
 449 02da 7530     		jne	.L20	#,
 450 02dc 7A2E     		jp	.L20	#,
 109:trigo_fast.c  ****     tc = yh2 * (c2.d + yh2*(c4.d + yh2*c6.d ));
 451              		.loc 1 109 0
 452 02de DD45D8   		fldl	-40(%ebp)	# %sfp
 453 02e1 DC8B4808 		fmull	c6@GOTOFF(%ebx)	# c6.d
 453      0000
 454 02e7 DC834008 		faddl	c4@GOTOFF(%ebx)	# c4.d
 454      0000
 455 02ed DC4DD8   		fmull	-40(%ebp)	# %sfp
 456 02f0 DC833808 		faddl	c2@GOTOFF(%ebx)	# c2.d
 456      0000
 457 02f6 DC4DD8   		fmull	-40(%ebp)	# %sfp
 458              	.LVL51:
 459              	.LBB15:
 113:trigo_fast.c  ****       Add12(*ch,*cl, 1., tc);
 460              		.loc 1 113 0
 461 02f9 D9E8     		fld1
 462              	.LVL52:
 463 02fb D9C1     		fld	%st(1)	#
 464 02fd D8C1     		fadd	%st(1), %st	#,
 465 02ff DD10     		fstl	(%eax)	#* ch
 466              	.LVL53:
 467 0301 DEE1     		fsubp	%st, %st(1)	#,
 468 0303 DEE9     		fsubrp	%st, %st(1)	#,
 469 0305 DD1A     		fstpl	(%edx)	#* cl
 470 0307 E9C50100 		jmp	.L18	#
 470      00
 471              	.LVL54:
 472              	.L20:
 473              	.LBE15:
 474              	.LBB16:
 119:trigo_fast.c  ****   Mul12(&sahyh_h,&sahyh_l, sah, yh);
 475              		.loc 1 119 0
 476 030c 8D830000 		leal	.LC1@GOTOFF(%ebx), %eax	#, tmp98
 476      0000
 477              	.LVL55:
 478 0312 890424   		movl	%eax, (%esp)	# tmp98,
 479 0315 E8FCFFFF 		call	puts@PLT	#
 479      FF
 480              	.LVL56:
 481 031a DD45E0   		fldl	-32(%ebp)	# %sfp
 482 031d DD5C241C 		fstpl	28(%esp)	#
 483 0321 DD830000 		fldl	sah@GOTOFF(%ebx)	# sah
 483      0000
 484 0327 DD5C2414 		fstpl	20(%esp)	#
 485 032b D9EE     		fldz
 486 032d DD54240C 		fstl	12(%esp)	#
 487 0331 DD5C2404 		fstpl	4(%esp)	#
 488 0335 8D830000 		leal	.LC2@GOTOFF(%ebx), %eax	#, tmp100
 488      0000
 489 033b 890424   		movl	%eax, (%esp)	# tmp100,
 490 033e E8FCFFFF 		call	printf@PLT	#
 490      FF
 491              	.LVL57:
 492 0343 DD830000 		fldl	sah@GOTOFF(%ebx)	# sah
 492      0000
 493 0349 DD55D0   		fstl	-48(%ebp)	# %sfp
 494              	.LVL58:
 495 034c DD45E0   		fldl	-32(%ebp)	# %sfp
 496 034f DD5C240C 		fstpl	12(%esp)	#
 497 0353 DD5C2404 		fstpl	4(%esp)	#
 498 0357 8D830000 		leal	.LC3@GOTOFF(%ebx), %eax	#, tmp101
 498      0000
 499 035d 890424   		movl	%eax, (%esp)	# tmp101,
 500 0360 E8FCFFFF 		call	printf@PLT	#
 500      FF
 501              	.LVL59:
 502 0365 DD830000 		fldl	.LC4@GOTOFF(%ebx)	#
 502      0000
 503 036b DD45D0   		fldl	-48(%ebp)	# %sfp
 504 036e D8C9     		fmul	%st(1), %st	#,
 505 0370 DD55C0   		fstl	-64(%ebp)	# %sfp
 506 0373 D9C9     		fxch	%st(1)	#
 507              	.LVL60:
 508 0375 DC4DE0   		fmull	-32(%ebp)	# %sfp
 509 0378 DD55C8   		fstl	-56(%ebp)	# %sfp
 510              	.LVL61:
 511 037b DD5C240C 		fstpl	12(%esp)	#
 512 037f DD5C2404 		fstpl	4(%esp)	#
 513 0383 8D830000 		leal	.LC5@GOTOFF(%ebx), %eax	#, tmp104
 513      0000
 514 0389 890424   		movl	%eax, (%esp)	# tmp104,
 515 038c E8FCFFFF 		call	printf@PLT	#
 515      FF
 516              	.LVL62:
 517 0391 DD45D0   		fldl	-48(%ebp)	# %sfp
 518 0394 DC65C0   		fsubl	-64(%ebp)	# %sfp
 519 0397 DC45C0   		faddl	-64(%ebp)	# %sfp
 520 039a DD5DB0   		fstpl	-80(%ebp)	# %sfp
 521              	.LVL63:
 522 039d DD45E0   		fldl	-32(%ebp)	# %sfp
 523              	.LVL64:
 524 03a0 DC65C8   		fsubl	-56(%ebp)	# %sfp
 525 03a3 DC45C8   		faddl	-56(%ebp)	# %sfp
 526 03a6 DD5DB8   		fstpl	-72(%ebp)	# %sfp
 527              	.LVL65:
 528 03a9 DD45C8   		fldl	-56(%ebp)	# %sfp
 529              	.LVL66:
 530 03ac DD5C240C 		fstpl	12(%esp)	#
 531 03b0 DD45C0   		fldl	-64(%ebp)	# %sfp
 532 03b3 DD5C2404 		fstpl	4(%esp)	#
 533 03b7 8D830000 		leal	.LC6@GOTOFF(%ebx), %eax	#, tmp107
 533      0000
 534 03bd 890424   		movl	%eax, (%esp)	# tmp107,
 535 03c0 E8FCFFFF 		call	printf@PLT	#
 535      FF
 536 03c5 DD45D0   		fldl	-48(%ebp)	# %sfp
 537 03c8 DC65B0   		fsubl	-80(%ebp)	# %sfp
 538 03cb DD5D98   		fstpl	-104(%ebp)	# %sfp
 539              	.LVL67:
 540 03ce DD45E0   		fldl	-32(%ebp)	# %sfp
 541              	.LVL68:
 542 03d1 DC65B8   		fsubl	-72(%ebp)	# %sfp
 543 03d4 DD5DA0   		fstpl	-96(%ebp)	# %sfp
 544              	.LVL69:
 545 03d7 DD45C8   		fldl	-56(%ebp)	# %sfp
 546              	.LVL70:
 547 03da DD5C240C 		fstpl	12(%esp)	#
 548 03de DD45C0   		fldl	-64(%ebp)	# %sfp
 549 03e1 DD5C2404 		fstpl	4(%esp)	#
 550 03e5 8D830000 		leal	.LC7@GOTOFF(%ebx), %eax	#, tmp108
 550      0000
 551 03eb 890424   		movl	%eax, (%esp)	# tmp108,
 552 03ee E8FCFFFF 		call	printf@PLT	#
 552      FF
 553 03f3 DD45E0   		fldl	-32(%ebp)	# %sfp
 554 03f6 DC4DD0   		fmull	-48(%ebp)	# %sfp
 555 03f9 DD5DD0   		fstpl	-48(%ebp)	# %sfp
 556              	.LVL71:
 557 03fc DD45B0   		fldl	-80(%ebp)	# %sfp
 558              	.LVL72:
 559 03ff DC4DB8   		fmull	-72(%ebp)	# %sfp
 560 0402 DC65D0   		fsubl	-48(%ebp)	# %sfp
 561 0405 DD45B0   		fldl	-80(%ebp)	# %sfp
 562 0408 DC4DA0   		fmull	-96(%ebp)	# %sfp
 563 040b DEC1     		faddp	%st, %st(1)	#,
 564 040d DD4598   		fldl	-104(%ebp)	# %sfp
 565 0410 DC4DB8   		fmull	-72(%ebp)	# %sfp
 566 0413 DEC1     		faddp	%st, %st(1)	#,
 567 0415 DD4598   		fldl	-104(%ebp)	# %sfp
 568 0418 DC4DA0   		fmull	-96(%ebp)	# %sfp
 569 041b DEC1     		faddp	%st, %st(1)	#,
 570 041d DD55C8   		fstl	-56(%ebp)	# %sfp
 571              	.LVL73:
 572 0420 DD5C240C 		fstpl	12(%esp)	#
 573 0424 DD45D0   		fldl	-48(%ebp)	# %sfp
 574              	.LVL74:
 575 0427 DD5C2404 		fstpl	4(%esp)	#
 576 042b 8D830000 		leal	.LC8@GOTOFF(%ebx), %eax	#, tmp116
 576      0000
 577 0431 890424   		movl	%eax, (%esp)	# tmp116,
 578 0434 E8FCFFFF 		call	printf@PLT	#
 578      FF
 579 0439 DD45C8   		fldl	-56(%ebp)	# %sfp
 580 043c DD5C2404 		fstpl	4(%esp)	#
 581 0440 8D830000 		leal	.LC9@GOTOFF(%ebx), %eax	#, tmp117
 581      0000
 582 0446 890424   		movl	%eax, (%esp)	# tmp117,
 583 0449 E8FCFFFF 		call	printf@PLT	#
 583      FF
 584              	.LBE16:
 585              	.LBB17:
 127:trigo_fast.c  ****   Add12(thi, tlo,  cah, -sahyh_h);
 586              		.loc 1 127 0
 587 044e DD831000 		fldl	cah@GOTOFF(%ebx)	# cah
 587      0000
 588              	.LVL75:
 589 0454 DD45D0   		fldl	-48(%ebp)	# %sfp
 590 0457 D9E0     		fchs
 591              	.LVL76:
 592 0459 D9C1     		fld	%st(1)	#
 593              	.LVL77:
 594 045b D8C1     		fadd	%st(1), %st	#,
 595              	.LVL78:
 596              	.LBE17:
 128:trigo_fast.c  ****   tlo = tc*cah - (ts*sahyh_h -  (cal + (tlo  - (sahyh_l + (sal*yh + sah*yl)) ))) ;
 597              		.loc 1 128 0
 598 045d DD45D8   		fldl	-40(%ebp)	# %sfp
 599              	.LVL79:
 600 0460 DC8B3008 		fmull	s7@GOTOFF(%ebx)	# s7.d
 600      0000
 601 0466 DC832808 		faddl	s5@GOTOFF(%ebx)	# s5.d
 601      0000
 602 046c DC4DD8   		fmull	-40(%ebp)	# %sfp
 603 046f DC832008 		faddl	s3@GOTOFF(%ebx)	# s3.d
 603      0000
 604 0475 DC4DD8   		fmull	-40(%ebp)	# %sfp
 605              	.LVL80:
 606 0478 DC4DD0   		fmull	-48(%ebp)	# %sfp
 607              	.LVL81:
 608              	.LBB18:
 609 047b D9C1     		fld	%st(1)	#
 610 047d D8E4     		fsub	%st(4), %st	#,
 611 047f DEEB     		fsubrp	%st, %st(3)	#,
 612              	.LBE18:
 613 0481 DD45E0   		fldl	-32(%ebp)	# %sfp
 614 0484 DC8B0800 		fmull	sal@GOTOFF(%ebx)	# sal
 614      0000
 615 048a DD45A8   		fldl	-88(%ebp)	# %sfp
 616 048d DC8B0000 		fmull	sah@GOTOFF(%ebx)	# sah
 616      0000
 617 0493 DEC1     		faddp	%st, %st(1)	#,
 618 0495 DC45C8   		faddl	-56(%ebp)	# %sfp
 619 0498 DEEB     		fsubrp	%st, %st(3)	#,
 620 049a D9CA     		fxch	%st(2)	#
 621 049c DC831800 		faddl	cal@GOTOFF(%ebx)	# cal
 621      0000
 622 04a2 DEEA     		fsubrp	%st, %st(2)	#,
 623 04a4 DD45D8   		fldl	-40(%ebp)	# %sfp
 624 04a7 DC8B4808 		fmull	c6@GOTOFF(%ebx)	# c6.d
 624      0000
 625 04ad DC834008 		faddl	c4@GOTOFF(%ebx)	# c4.d
 625      0000
 626 04b3 DC4DD8   		fmull	-40(%ebp)	# %sfp
 627 04b6 DC833808 		faddl	c2@GOTOFF(%ebx)	# c2.d
 627      0000
 628 04bc DC4DD8   		fmull	-40(%ebp)	# %sfp
 629              	.LVL82:
 630 04bf DECB     		fmulp	%st, %st(3)	#,
 631 04c1 D9CA     		fxch	%st(2)	#
 632              	.LVL83:
 633 04c3 DEE1     		fsubp	%st, %st(1)	#,
 634              	.LVL84:
 635              	.LBB19:
 129:trigo_fast.c  ****   Add12(*ch, *cl,    thi, tlo );
 636              		.loc 1 129 0
 637 04c5 D9C1     		fld	%st(1)	#
 638              	.LVL85:
 639 04c7 D8C1     		fadd	%st(1), %st	#,
 640 04c9 DD16     		fstl	(%esi)	#* ch
 641              	.LVL86:
 642 04cb DEE2     		fsubp	%st, %st(2)	#,
 643              	.LVL87:
 644 04cd DEE1     		fsubp	%st, %st(1)	#,
 645              	.LVL88:
 646 04cf DD1F     		fstpl	(%edi)	#* cl
 647              	.LVL89:
 648              	.L18:
 649              	.LBE19:
 131:trigo_fast.c  **** }
 650              		.loc 1 131 0
 651 04d1 81C48C00 		addl	$140, %esp	#,
 651      0000
 652 04d7 5B       		popl	%ebx	#
 653              		.cfi_restore 3
 654 04d8 5E       		popl	%esi	#
 655              		.cfi_restore 6
 656              	.LVL90:
 657 04d9 5F       		popl	%edi	#
 658              		.cfi_restore 7
 659              	.LVL91:
 660 04da 5D       		popl	%ebp	#
 661              		.cfi_restore 5
 662              		.cfi_def_cfa 4, 4
 663 04db C3       		ret
 664              		.cfi_endproc
 665              	.LFE8:
 667              		.section	.rodata.str1.1
 668              	.LC11:
 669 0072 496E7369 		.string	"Inside range reduction!"
 669      64652072 
 669      616E6765 
 669      20726564 
 669      75637469 
 670              	.LC12:
 671 008a 783D252E 		.string	"x=%.20e absxhi=%i\n"
 671      32306520 
 671      61627378 
 671      68693D25 
 671      690A00
 672              	.LC13:
 673 009d 7079683D 		.string	"pyh=%.20e, pyl=%.20e\n"
 673      252E3230 
 673      652C2070 
 673      796C3D25 
 673      2E323065 
 674              	.LC14:
 675 00b3 584D4158 		.string	"XMAX_CODY_WAITE_3=%i\n"
 675      5F434F44 
 675      595F5741 
 675      4954455F 
 675      333D2569 
 676              	.LC16:
 677 00c9 494E565F 		.string	"INV_PIO256       =%.20e\n"
 677      50494F32 
 677      35362020 
 677      20202020 
 677      203D252E 
 678              	.LC18:
 679 00e2 52525F44 		.string	"RR_DD_MCH        =%.20e\n"
 679      445F4D43 
 679      48202020 
 679      20202020 
 679      203D252E 
 680              	.LC20:
 681 00fb 6B3D2569 		.string	"k=%i\n"
 681      0A00
 682              	.LC21:
 683 0101 6B643D25 		.string	"kd=%.20e\n"
 683      2E323065 
 683      0A00
 684              	.LC22:
 685 010b 59455320 		.string	"YES (k&127) == 0"
 685      286B2631 
 685      32372920 
 685      3D3D2030 
 685      00
 686              		.section	.rodata.str1.4
 687 0026 0000     		.align 4
 688              	.LC23:
 689 0028 6B63685F 		.string	"kch_h=%.20e kch_l=%.20e kd=%.20e\n\n"
 689      683D252E 
 689      32306520 
 689      6B63685F 
 689      6C3D252E 
 690 004b 00       		.align 4
 691              	.LC27:
 692 004c 6B63685F 		.string	"kch_h=%.20e kch_l=%.20e kd=%.20e\n"
 692      683D252E 
 692      32306520 
 692      6B63685F 
 692      6C3D252E 
 693 006e 0000     		.align 4
 694              	.LC28:
 695 0070 6B636D5F 		.string	"kcm_h=%.20e kcm_l=%.20e kd=%.20e\n\n"
 695      683D252E 
 695      32306520 
 695      6B636D5F 
 695      6C3D252E 
 696              		.text
 698              	trig_range_reduction:
 699              	.LFB9:
 145:trigo_fast.c  **** 				double (*scs_fun)(double)   ) {
 700              		.loc 1 145 0
 701              		.cfi_startproc
 702              	.LVL92:
 703 04dc 55       		pushl	%ebp	#
 704              		.cfi_def_cfa_offset 8
 705              		.cfi_offset 5, -8
 706 04dd 89E5     		movl	%esp, %ebp	#,
 707              		.cfi_def_cfa_register 5
 708 04df 57       		pushl	%edi	#
 709 04e0 56       		pushl	%esi	#
 710 04e1 53       		pushl	%ebx	#
 711 04e2 81EC3C02 		subl	$572, %esp	#,
 711      0000
 712              		.cfi_offset 3, -20
 713              		.cfi_offset 6, -16
 714              		.cfi_offset 7, -12
 715 04e8 E8FCFFFF 		call	__i686.get_pc_thunk.bx	#
 715      FF
 716 04ed 81C30200 		addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
 716      0000
 717 04f3 89C7     		movl	%eax, %edi	# pyh, pyh
 718 04f5 899534FE 		movl	%edx, -460(%ebp)	# pyl, %sfp
 718      FFFF
 719 04fb DD4508   		fldl	8(%ebp)	# x
 720 04fe DD9D48FE 		fstpl	-440(%ebp)	# %sfp
 720      FFFF
 721 0504 8B7510   		movl	16(%ebp), %esi	# absxhi, absxhi
 146:trigo_fast.c  ****   printf ("Inside range reduction!\n");
 722              		.loc 1 146 0
 723 0507 8D830000 		leal	.LC11@GOTOFF(%ebx), %eax	#, tmp125
 723      0000
 724              	.LVL93:
 725 050d 890424   		movl	%eax, (%esp)	# tmp125,
 726 0510 E8FCFFFF 		call	puts@PLT	#
 726      FF
 727              	.LVL94:
 147:trigo_fast.c  ****   printf ("x=%.20e absxhi=%i\n", x,absxhi);
 728              		.loc 1 147 0
 729 0515 8974240C 		movl	%esi, 12(%esp)	# absxhi,
 730 0519 DD8548FE 		fldl	-440(%ebp)	# %sfp
 730      FFFF
 731 051f DD5C2404 		fstpl	4(%esp)	#
 732 0523 8D830000 		leal	.LC12@GOTOFF(%ebx), %eax	#, tmp126
 732      0000
 733 0529 890424   		movl	%eax, (%esp)	# tmp126,
 734 052c E8FCFFFF 		call	printf@PLT	#
 734      FF
 148:trigo_fast.c  ****   printf ("pyh=%.20e, pyl=%.20e\n", *pyh,*pyl);
 735              		.loc 1 148 0
 736 0531 8B8534FE 		movl	-460(%ebp), %eax	# %sfp,
 736      FFFF
 737 0537 DD00     		fldl	(%eax)	#
 738 0539 DD5C240C 		fstpl	12(%esp)	#
 739 053d DD07     		fldl	(%edi)	#* pyh
 740 053f DD5C2404 		fstpl	4(%esp)	#
 741 0543 8D830000 		leal	.LC13@GOTOFF(%ebx), %eax	#, tmp129
 741      0000
 742 0549 890424   		movl	%eax, (%esp)	# tmp129,
 743 054c E8FCFFFF 		call	printf@PLT	#
 743      FF
 149:trigo_fast.c  ****   printf ("XMAX_CODY_WAITE_3=%i\n",XMAX_CODY_WAITE_3);
 744              		.loc 1 149 0
 745 0551 C7442404 		movl	$1098457595, 4(%esp)	#,
 745      FB217941 
 746 0559 8D830000 		leal	.LC14@GOTOFF(%ebx), %eax	#, tmp130
 746      0000
 747 055f 890424   		movl	%eax, (%esp)	# tmp130,
 748 0562 E8FCFFFF 		call	printf@PLT	#
 748      FF
 150:trigo_fast.c  ****   printf ("INV_PIO256       =%.20e\n",INV_PIO256);
 749              		.loc 1 150 0
 750 0567 DD830000 		fldl	.LC15@GOTOFF(%ebx)	#
 750      0000
 751 056d DD5C2404 		fstpl	4(%esp)	#
 752 0571 8D830000 		leal	.LC16@GOTOFF(%ebx), %eax	#, tmp132
 752      0000
 753 0577 890424   		movl	%eax, (%esp)	# tmp132,
 754 057a E8FCFFFF 		call	printf@PLT	#
 754      FF
 151:trigo_fast.c  ****   printf ("RR_DD_MCH        =%.20e\n",RR_DD_MCH);
 755              		.loc 1 151 0
 756 057f DD830000 		fldl	.LC17@GOTOFF(%ebx)	#
 756      0000
 757 0585 DD5C2404 		fstpl	4(%esp)	#
 758 0589 8D830000 		leal	.LC18@GOTOFF(%ebx), %eax	#, tmp134
 758      0000
 759 058f 890424   		movl	%eax, (%esp)	# tmp134,
 760 0592 E8FCFFFF 		call	printf@PLT	#
 760      FF
 154:trigo_fast.c  ****   if  (absxhi < XMAX_CODY_WAITE_3) {
 761              		.loc 1 154 0
 762 0597 81FEFA21 		cmpl	$1098457594, %esi	#, absxhi
 762      7941
 763 059d 0F8F5905 		jg	.L22	#,
 763      0000
 764              	.LBB36:
 155:trigo_fast.c  ****     DOUBLE2INT(k, x * INV_PIO256);
 765              		.loc 1 155 0
 766 05a3 DD8548FE 		fldl	-440(%ebp)	# %sfp
 766      FFFF
 767 05a9 DC8B0000 		fmull	.LC15@GOTOFF(%ebx)	#
 767      0000
 768 05af D8830000 		fadds	.LC19@GOTOFF(%ebx)	#
 768      0000
 769 05b5 DD9D50FE 		fstpl	-432(%ebp)	# %sfp
 769      FFFF
 770 05bb 8B8550FE 		movl	-432(%ebp), %eax	# %sfp,
 770      FFFF
 771 05c1 898540FE 		movl	%eax, -448(%ebp)	#, %sfp
 771      FFFF
 772              	.LVL95:
 773              	.LBE36:
 156:trigo_fast.c  ****     printf("k=%i\n", k);
 774              		.loc 1 156 0
 775 05c7 89442404 		movl	%eax, 4(%esp)	#,
 776 05cb 8D830000 		leal	.LC20@GOTOFF(%ebx), %eax	#, tmp140
 776      0000
 777 05d1 890424   		movl	%eax, (%esp)	# tmp140,
 778 05d4 E8FCFFFF 		call	printf@PLT	#
 778      FF
 157:trigo_fast.c  ****     kd = (double) k;
 779              		.loc 1 157 0
 780 05d9 DB8540FE 		fildl	-448(%ebp)	# %sfp
 780      FFFF
 781 05df DD9550FE 		fstl	-432(%ebp)	# %sfp
 781      FFFF
 782              	.LVL96:
 158:trigo_fast.c  ****     printf("kd=%.20e\n", kd);
 783              		.loc 1 158 0
 784 05e5 DD5C2404 		fstpl	4(%esp)	#
 785 05e9 8D830000 		leal	.LC21@GOTOFF(%ebx), %eax	#, tmp141
 785      0000
 786 05ef 890424   		movl	%eax, (%esp)	# tmp141,
 787 05f2 E8FCFFFF 		call	printf@PLT	#
 787      FF
 788              	.LVL97:
 159:trigo_fast.c  ****     if(((k&127) == 0)) { 
 789              		.loc 1 159 0
 790 05f7 F68540FE 		testb	$127, -448(%ebp)	#, %sfp
 790      FFFF7F
 791 05fe 0F853304 		jne	.L23	#,
 791      0000
 792              	.LBB37:
 160:trigo_fast.c  ****       printf("YES (k&127) == 0\n");
 793              		.loc 1 160 0
 794 0604 8D830000 		leal	.LC22@GOTOFF(%ebx), %eax	#, tmp143
 794      0000
 795 060a 890424   		movl	%eax, (%esp)	# tmp143,
 796 060d E8FCFFFF 		call	puts@PLT	#
 796      FF
 797              	.LVL98:
 171:trigo_fast.c  ****       printf("kch_h=%.20e kch_l=%.20e kd=%.20e\n\n",kch_h,kch_l,kd);
 798              		.loc 1 171 0
 799 0612 DD8550FE 		fldl	-432(%ebp)	# %sfp
 799      FFFF
 800 0618 DD5C2414 		fstpl	20(%esp)	#
 801 061c D9EE     		fldz
 802 061e DD54240C 		fstl	12(%esp)	#
 803 0622 DD5C2404 		fstpl	4(%esp)	#
 804 0626 8D830000 		leal	.LC23@GOTOFF(%ebx), %eax	#, tmp146
 804      0000
 805 062c 890424   		movl	%eax, (%esp)	# tmp146,
 806 062f E8FCFFFF 		call	printf@PLT	#
 806      FF
 807              	.LBB38:
 172:trigo_fast.c  ****       Mul12(&kch_h, &kch_l,   kd, RR_DD_MCH);
 808              		.loc 1 172 0
 809 0634 8D830000 		leal	.LC1@GOTOFF(%ebx), %eax	#,
 809      0000
 810 063a 8985F0FD 		movl	%eax, -528(%ebp)	#, %sfp
 810      FFFF
 811 0640 890424   		movl	%eax, (%esp)	#,
 812 0643 E8FCFFFF 		call	puts@PLT	#
 812      FF
 813 0648 8D830000 		leal	.LC2@GOTOFF(%ebx), %eax	#,
 813      0000
 814 064e 8985F4FD 		movl	%eax, -524(%ebp)	#, %sfp
 814      FFFF
 815 0654 C744241C 		movl	$1413754136, 28(%esp)	#,
 815      182D4454 
 816 065c C7442420 		movl	$-1081531909, 32(%esp)	#,
 816      FB2189BF 
 817 0664 DD8550FE 		fldl	-432(%ebp)	# %sfp
 817      FFFF
 818 066a DD5C2414 		fstpl	20(%esp)	#
 819 066e D9EE     		fldz
 820 0670 DD54240C 		fstl	12(%esp)	#
 821 0674 DD5C2404 		fstpl	4(%esp)	#
 822 0678 890424   		movl	%eax, (%esp)	#,
 823 067b E8FCFFFF 		call	printf@PLT	#
 823      FF
 824              	.LVL99:
 825 0680 8D830000 		leal	.LC3@GOTOFF(%ebx), %eax	#,
 825      0000
 826 0686 8985F8FD 		movl	%eax, -520(%ebp)	#, %sfp
 826      FFFF
 827 068c C744240C 		movl	$1413754136, 12(%esp)	#,
 827      182D4454 
 828 0694 C7442410 		movl	$-1081531909, 16(%esp)	#,
 828      FB2189BF 
 829 069c DD8550FE 		fldl	-432(%ebp)	# %sfp
 829      FFFF
 830 06a2 DD5C2404 		fstpl	4(%esp)	#
 831 06a6 890424   		movl	%eax, (%esp)	#,
 832 06a9 E8FCFFFF 		call	printf@PLT	#
 832      FF
 833 06ae DD8550FE 		fldl	-432(%ebp)	# %sfp
 833      FFFF
 834 06b4 DC8B0000 		fmull	.LC4@GOTOFF(%ebx)	#
 834      0000
 835 06ba DD9538FE 		fstl	-456(%ebp)	# %sfp
 835      FFFF
 836              	.LVL100:
 837 06c0 8D830000 		leal	.LC5@GOTOFF(%ebx), %eax	#,
 837      0000
 838 06c6 8985FCFD 		movl	%eax, -516(%ebp)	#, %sfp
 838      FFFF
 839 06cc C744240C 		movl	$1466461315, 12(%esp)	#,
 839      836C6857 
 840 06d4 C7442410 		movl	$-1053220357, 16(%esp)	#,
 840      FB2139C1 
 841 06dc DD5C2404 		fstpl	4(%esp)	#
 842 06e0 890424   		movl	%eax, (%esp)	#,
 843 06e3 E8FCFFFF 		call	printf@PLT	#
 843      FF
 844              	.LVL101:
 845 06e8 DD8550FE 		fldl	-432(%ebp)	# %sfp
 845      FFFF
 846 06ee DCA538FE 		fsubl	-456(%ebp)	# %sfp
 846      FFFF
 847 06f4 DC8538FE 		faddl	-456(%ebp)	# %sfp
 847      FFFF
 848 06fa DD9D20FE 		fstpl	-480(%ebp)	# %sfp
 848      FFFF
 849              	.LVL102:
 850 0700 8D830000 		leal	.LC6@GOTOFF(%ebx), %eax	#,
 850      0000
 851 0706 898500FE 		movl	%eax, -512(%ebp)	#, %sfp
 851      FFFF
 852 070c C744240C 		movl	$1466461315, 12(%esp)	#,
 852      836C6857 
 853 0714 C7442410 		movl	$-1053220357, 16(%esp)	#,
 853      FB2139C1 
 854 071c DD8538FE 		fldl	-456(%ebp)	# %sfp
 854      FFFF
 855              	.LVL103:
 856 0722 DD5C2404 		fstpl	4(%esp)	#
 857 0726 890424   		movl	%eax, (%esp)	#,
 858 0729 E8FCFFFF 		call	printf@PLT	#
 858      FF
 859 072e DD8550FE 		fldl	-432(%ebp)	# %sfp
 859      FFFF
 860 0734 DCA520FE 		fsubl	-480(%ebp)	# %sfp
 860      FFFF
 861 073a DD9D10FE 		fstpl	-496(%ebp)	# %sfp
 861      FFFF
 862              	.LVL104:
 863 0740 8D830000 		leal	.LC7@GOTOFF(%ebx), %eax	#,
 863      0000
 864 0746 898504FE 		movl	%eax, -508(%ebp)	#, %sfp
 864      FFFF
 865 074c C744240C 		movl	$1466461315, 12(%esp)	#,
 865      836C6857 
 866 0754 C7442410 		movl	$-1053220357, 16(%esp)	#,
 866      FB2139C1 
 867 075c DD8538FE 		fldl	-456(%ebp)	# %sfp
 867      FFFF
 868              	.LVL105:
 869 0762 DD5C2404 		fstpl	4(%esp)	#
 870 0766 890424   		movl	%eax, (%esp)	#,
 871 0769 E8FCFFFF 		call	printf@PLT	#
 871      FF
 872 076e 8D830000 		leal	.LC17@GOTOFF(%ebx), %eax	#,
 872      0000
 873 0774 DD00     		fldl	(%eax)	#
 874 0776 DC8D50FE 		fmull	-432(%ebp)	# %sfp
 874      FFFF
 875 077c DD9518FE 		fstl	-488(%ebp)	# %sfp
 875      FFFF
 876              	.LVL106:
 877 0782 DD830000 		fldl	.LC25@GOTOFF(%ebx)	#
 877      0000
 878              	.LVL107:
 879 0788 DD8520FE 		fldl	-480(%ebp)	# %sfp
 879      FFFF
 880 078e D8C9     		fmul	%st(1), %st	#,
 881 0790 DEE2     		fsubp	%st, %st(2)	#,
 882 0792 D9830000 		flds	.LC26@GOTOFF(%ebx)	#
 882      0000
 883 0798 DD8520FE 		fldl	-480(%ebp)	# %sfp
 883      FFFF
 884 079e D8C9     		fmul	%st(1), %st	#,
 885 07a0 DEC3     		faddp	%st, %st(3)	#,
 886 07a2 D9C9     		fxch	%st(1)	#
 887 07a4 DC8D10FE 		fmull	-496(%ebp)	# %sfp
 887      FFFF
 888 07aa DEC2     		faddp	%st, %st(2)	#,
 889 07ac DC8D10FE 		fmull	-496(%ebp)	# %sfp
 889      FFFF
 890 07b2 DEC1     		faddp	%st, %st(1)	#,
 891 07b4 DD9528FE 		fstl	-472(%ebp)	# %sfp
 891      FFFF
 892              	.LVL108:
 893 07ba 8D830000 		leal	.LC8@GOTOFF(%ebx), %eax	#,
 893      0000
 894 07c0 898508FE 		movl	%eax, -504(%ebp)	#, %sfp
 894      FFFF
 895 07c6 DD5C240C 		fstpl	12(%esp)	#
 896 07ca DD8518FE 		fldl	-488(%ebp)	# %sfp
 896      FFFF
 897              	.LVL109:
 898 07d0 DD5C2404 		fstpl	4(%esp)	#
 899 07d4 890424   		movl	%eax, (%esp)	#,
 900 07d7 E8FCFFFF 		call	printf@PLT	#
 900      FF
 901 07dc 8D830000 		leal	.LC9@GOTOFF(%ebx), %eax	#,
 901      0000
 902 07e2 89850CFE 		movl	%eax, -500(%ebp)	#, %sfp
 902      FFFF
 903 07e8 DD8528FE 		fldl	-472(%ebp)	# %sfp
 903      FFFF
 904 07ee DD5C2404 		fstpl	4(%esp)	#
 905 07f2 890424   		movl	%eax, (%esp)	#,
 906 07f5 E8FCFFFF 		call	printf@PLT	#
 906      FF
 907              	.LBE38:
 173:trigo_fast.c  ****       printf("kch_h=%.20e kch_l=%.20e kd=%.20e\n",kch_h,kch_l,kd);//KCH_L is quite different!
 908              		.loc 1 173 0
 909 07fa DD8550FE 		fldl	-432(%ebp)	# %sfp
 909      FFFF
 910 0800 DD5C2414 		fstpl	20(%esp)	#
 911 0804 DD8528FE 		fldl	-472(%ebp)	# %sfp
 911      FFFF
 912 080a DD5C240C 		fstpl	12(%esp)	#
 913 080e DD8518FE 		fldl	-488(%ebp)	# %sfp
 913      FFFF
 914 0814 DD5C2404 		fstpl	4(%esp)	#
 915 0818 8D830000 		leal	.LC27@GOTOFF(%ebx), %eax	#, tmp171
 915      0000
 916 081e 890424   		movl	%eax, (%esp)	# tmp171,
 917 0821 E8FCFFFF 		call	printf@PLT	#
 917      FF
 175:trigo_fast.c  ****       printf("kcm_h=%.20e kcm_l=%.20e kd=%.20e\n\n",kch_h,kch_l,kd);
 918              		.loc 1 175 0
 919 0826 8DB30000 		leal	.LC28@GOTOFF(%ebx), %esi	#, D.2158
 919      0000
 920 082c DD8550FE 		fldl	-432(%ebp)	# %sfp
 920      FFFF
 921 0832 DD5C2414 		fstpl	20(%esp)	#
 922 0836 DD8528FE 		fldl	-472(%ebp)	# %sfp
 922      FFFF
 923 083c DD5C240C 		fstpl	12(%esp)	#
 924 0840 DD8518FE 		fldl	-488(%ebp)	# %sfp
 924      FFFF
 925 0846 DD5C2404 		fstpl	4(%esp)	#
 926 084a 893424   		movl	%esi, (%esp)	# D.2158,
 927 084d E8FCFFFF 		call	printf@PLT	#
 927      FF
 928              	.LBB39:
 176:trigo_fast.c  ****       Mul12(&kcm_h, &kcm_l,   kd, RR_DD_MCM);
 929              		.loc 1 176 0
 930 0852 8B85F0FD 		movl	-528(%ebp), %eax	# %sfp,
 930      FFFF
 931 0858 890424   		movl	%eax, (%esp)	#,
 932 085b E8FCFFFF 		call	puts@PLT	#
 932      FF
 933 0860 C744241C 		movl	$856972295, 28(%esp)	#,
 933      075C1433 
 934 0868 C7442420 		movl	$-1138645466, 32(%esp)	#,
 934      26A621BC 
 935 0870 DD8550FE 		fldl	-432(%ebp)	# %sfp
 935      FFFF
 936 0876 DD5C2414 		fstpl	20(%esp)	#
 937 087a D9EE     		fldz
 938 087c DD54240C 		fstl	12(%esp)	#
 939 0880 DD5C2404 		fstpl	4(%esp)	#
 940 0884 8B85F4FD 		movl	-524(%ebp), %eax	# %sfp,
 940      FFFF
 941 088a 890424   		movl	%eax, (%esp)	#,
 942 088d E8FCFFFF 		call	printf@PLT	#
 942      FF
 943              	.LVL110:
 944 0892 C744240C 		movl	$856972295, 12(%esp)	#,
 944      075C1433 
 945 089a C7442410 		movl	$-1138645466, 16(%esp)	#,
 945      26A621BC 
 946 08a2 DD8550FE 		fldl	-432(%ebp)	# %sfp
 946      FFFF
 947 08a8 DD5C2404 		fstpl	4(%esp)	#
 948 08ac 8B85F8FD 		movl	-520(%ebp), %eax	# %sfp,
 948      FFFF
 949 08b2 890424   		movl	%eax, (%esp)	#,
 950 08b5 E8FCFFFF 		call	printf@PLT	#
 950      FF
 951              	.LVL111:
 952 08ba C744240C 		movl	$893984973, 12(%esp)	#,
 952      CD204935 
 953 08c2 C7442410 		movl	$-1110333914, 16(%esp)	#,
 953      26A6D1BD 
 954 08ca DD8538FE 		fldl	-456(%ebp)	# %sfp
 954      FFFF
 955 08d0 DD5C2404 		fstpl	4(%esp)	#
 956 08d4 8B85FCFD 		movl	-516(%ebp), %eax	# %sfp,
 956      FFFF
 957 08da 890424   		movl	%eax, (%esp)	#,
 958 08dd E8FCFFFF 		call	printf@PLT	#
 958      FF
 959              	.LVL112:
 960 08e2 C744240C 		movl	$893984973, 12(%esp)	#,
 960      CD204935 
 961 08ea C7442410 		movl	$-1110333914, 16(%esp)	#,
 961      26A6D1BD 
 962 08f2 DD8538FE 		fldl	-456(%ebp)	# %sfp
 962      FFFF
 963 08f8 DD5C2404 		fstpl	4(%esp)	#
 964 08fc 8B8500FE 		movl	-512(%ebp), %eax	# %sfp,
 964      FFFF
 965 0902 890424   		movl	%eax, (%esp)	#,
 966 0905 E8FCFFFF 		call	printf@PLT	#
 966      FF
 967              	.LVL113:
 968 090a C744240C 		movl	$893984973, 12(%esp)	#,
 968      CD204935 
 969 0912 C7442410 		movl	$-1110333914, 16(%esp)	#,
 969      26A6D1BD 
 970 091a DD8538FE 		fldl	-456(%ebp)	# %sfp
 970      FFFF
 971 0920 DD5C2404 		fstpl	4(%esp)	#
 972 0924 8B8504FE 		movl	-508(%ebp), %eax	# %sfp,
 972      FFFF
 973 092a 890424   		movl	%eax, (%esp)	#,
 974 092d E8FCFFFF 		call	printf@PLT	#
 974      FF
 975 0932 8D830000 		leal	.LC29@GOTOFF(%ebx), %eax	#,
 975      0000
 976 0938 DD00     		fldl	(%eax)	#
 977 093a DC8D50FE 		fmull	-432(%ebp)	# %sfp
 977      FFFF
 978 0940 DD9538FE 		fstl	-456(%ebp)	# %sfp
 978      FFFF
 979              	.LVL114:
 980 0946 DD830000 		fldl	.LC31@GOTOFF(%ebx)	#
 980      0000
 981              	.LVL115:
 982 094c DD8520FE 		fldl	-480(%ebp)	# %sfp
 982      FFFF
 983 0952 D8C9     		fmul	%st(1), %st	#,
 984 0954 DEE2     		fsubp	%st, %st(2)	#,
 985 0956 DD830000 		fldl	.LC32@GOTOFF(%ebx)	#
 985      0000
 986 095c DD8520FE 		fldl	-480(%ebp)	# %sfp
 986      FFFF
 987 0962 D8C9     		fmul	%st(1), %st	#,
 988 0964 DEC3     		faddp	%st, %st(3)	#,
 989 0966 D9C9     		fxch	%st(1)	#
 990 0968 DC8D10FE 		fmull	-496(%ebp)	# %sfp
 990      FFFF
 991 096e DEC2     		faddp	%st, %st(2)	#,
 992 0970 DC8D10FE 		fmull	-496(%ebp)	# %sfp
 992      FFFF
 993 0976 DEC1     		faddp	%st, %st(1)	#,
 994 0978 DD9520FE 		fstl	-480(%ebp)	# %sfp
 994      FFFF
 995              	.LVL116:
 996 097e DD5C240C 		fstpl	12(%esp)	#
 997 0982 DD8538FE 		fldl	-456(%ebp)	# %sfp
 997      FFFF
 998              	.LVL117:
 999 0988 DD5C2404 		fstpl	4(%esp)	#
 1000 098c 8B8508FE 		movl	-504(%ebp), %eax	# %sfp,
 1000      FFFF
 1001 0992 890424   		movl	%eax, (%esp)	#,
 1002 0995 E8FCFFFF 		call	printf@PLT	#
 1002      FF
 1003 099a DD8520FE 		fldl	-480(%ebp)	# %sfp
 1003      FFFF
 1004 09a0 DD5C2404 		fstpl	4(%esp)	#
 1005 09a4 8B850CFE 		movl	-500(%ebp), %eax	# %sfp,
 1005      FFFF
 1006 09aa 890424   		movl	%eax, (%esp)	#,
 1007 09ad E8FCFFFF 		call	printf@PLT	#
 1007      FF
 1008              	.LBE39:
 177:trigo_fast.c  ****       printf("kcm_h=%.20e kcm_l=%.20e kd=%.20e\n\n",kch_h,kch_l,kd);
 1009              		.loc 1 177 0
 1010 09b2 DD8550FE 		fldl	-432(%ebp)	# %sfp
 1010      FFFF
 1011 09b8 DD5C2414 		fstpl	20(%esp)	#
 1012 09bc DD8528FE 		fldl	-472(%ebp)	# %sfp
 1012      FFFF
 1013 09c2 DD5C240C 		fstpl	12(%esp)	#
 1014 09c6 DD8518FE 		fldl	-488(%ebp)	# %sfp
 1014      FFFF
 1015 09cc DD5C2404 		fstpl	4(%esp)	#
 1016 09d0 893424   		movl	%esi, (%esp)	# D.2158,
 1017 09d3 E8FCFFFF 		call	printf@PLT	#
 1017      FF
 1018              	.LVL118:
 1019              	.LBB40:
 179:trigo_fast.c  ****       Add12 (th,tl,  kch_l, kcm_h) ;
 1020              		.loc 1 179 0
 1021 09d8 DD8528FE 		fldl	-472(%ebp)	# %sfp
 1021      FFFF
 1022 09de DC8538FE 		faddl	-456(%ebp)	# %sfp
 1022      FFFF
 1023              	.LVL119:
 1024              	.LBE40:
 1025              	.LBB41:
 181:trigo_fast.c  ****       Add22 (pyh, pyl,    (x + kch_h) , (kcm_l - kd*RR_DD_CL),   th, tl) ;
 1026              		.loc 1 181 0
 1027 09e4 DD8548FE 		fldl	-440(%ebp)	# %sfp
 1027      FFFF
 1028              	.LVL120:
 1029 09ea DC8518FE 		faddl	-488(%ebp)	# %sfp
 1029      FFFF
 1030 09f0 D9C0     		fld	%st(0)	#
 1031 09f2 D8C2     		fadd	%st(2), %st	#,
 1032              	.LVL121:
 1033 09f4 DCE9     		fsubr	%st, %st(1)	#,
 1034 09f6 D9C9     		fxch	%st(1)	#
 1035              	.LVL122:
 1036 09f8 D8C2     		fadd	%st(2), %st	#,
 1037 09fa D9CA     		fxch	%st(2)	#
 1038              	.LBE41:
 1039              	.LBB42:
 1040 09fc DCA528FE 		fsubl	-472(%ebp)	# %sfp
 1040      FFFF
 1041 0a02 DD8538FE 		fldl	-456(%ebp)	# %sfp
 1041      FFFF
 1042 0a08 DEE1     		fsubp	%st, %st(1)	#,
 1043              	.LBE42:
 1044              	.LBB43:
 1045 0a0a DEC2     		faddp	%st, %st(2)	#,
 1046 0a0c DD8550FE 		fldl	-432(%ebp)	# %sfp
 1046      FFFF
 1047 0a12 DC8B0000 		fmull	.LC33@GOTOFF(%ebx)	#
 1047      0000
 1048 0a18 DC8520FE 		faddl	-480(%ebp)	# %sfp
 1048      FFFF
 1049 0a1e DEC2     		faddp	%st, %st(2)	#,
 1050              	.LVL123:
 1051 0a20 D9C0     		fld	%st(0)	#
 1052 0a22 D8C2     		fadd	%st(2), %st	#,
 1053 0a24 DD17     		fstl	(%edi)	#* pyh
 1054 0a26 DEE9     		fsubrp	%st, %st(1)	#,
 1055              	.LVL124:
 1056 0a28 DEC1     		faddp	%st, %st(1)	#,
 1057 0a2a 8B8534FE 		movl	-460(%ebp), %eax	# %sfp,
 1057      FFFF
 1058 0a30 DD18     		fstpl	(%eax)	#
 1059 0a32 E93A0600 		jmp	.L24	#
 1059      00
 1060              	.LVL125:
 1061              	.L23:
 1062              	.LBE43:
 1063              	.LBE37:
 186:trigo_fast.c  ****       if (absxhi < XMAX_CODY_WAITE_2) { 
 1064              		.loc 1 186 0
 1065 0a37 81FEFA21 		cmpl	$1089020410, %esi	#, absxhi
 1065      E940
 1066 0a3d 7F35     		jg	.L25	#,
 1067              	.LBB44:
 188:trigo_fast.c  **** 	Add12 (*pyh,*pyl,  (x - kd*RR_CW2_CH),  (kd*RR_CW2_MCL) ) ;
 1068              		.loc 1 188 0
 1069 0a3f DD8550FE 		fldl	-432(%ebp)	# %sfp
 1069      FFFF
 1070 0a45 DC8B0000 		fmull	.LC34@GOTOFF(%ebx)	#
 1070      0000
 1071 0a4b DC8548FE 		faddl	-440(%ebp)	# %sfp
 1071      FFFF
 1072              	.LVL126:
 1073 0a51 DD8550FE 		fldl	-432(%ebp)	# %sfp
 1073      FFFF
 1074              	.LVL127:
 1075 0a57 DC8B0000 		fmull	.LC35@GOTOFF(%ebx)	#
 1075      0000
 1076              	.LVL128:
 1077 0a5d D9C1     		fld	%st(1)	#
 1078              	.LVL129:
 1079 0a5f D8C1     		fadd	%st(1), %st	#,
 1080 0a61 DD17     		fstl	(%edi)	#* pyh
 1081              	.LVL130:
 1082 0a63 DEE2     		fsubp	%st, %st(2)	#,
 1083              	.LVL131:
 1084 0a65 DEE1     		fsubp	%st, %st(1)	#,
 1085 0a67 8B8534FE 		movl	-460(%ebp), %eax	# %sfp,
 1085      FFFF
 1086 0a6d DD18     		fstpl	(%eax)	#
 1087 0a6f E9FD0500 		jmp	.L24	#
 1087      00
 1088              	.LVL132:
 1089              	.L25:
 1090              	.LBE44:
 1091              	.LBB45:
 192:trigo_fast.c  ****        Add12Cond(*pyh,*pyl,  (x - kd*RR_CW3_CH) -  kd*RR_CW3_CM,   kd*RR_CW3_MCL);
 1092              		.loc 1 192 0
 1093 0a74 DD8550FE 		fldl	-432(%ebp)	# %sfp
 1093      FFFF
 1094 0a7a D88B0000 		fmuls	.LC36@GOTOFF(%ebx)	#
 1094      0000
 1095 0a80 DC8548FE 		faddl	-440(%ebp)	# %sfp
 1095      FFFF
 1096 0a86 DD8550FE 		fldl	-432(%ebp)	# %sfp
 1096      FFFF
 1097 0a8c D88B0000 		fmuls	.LC37@GOTOFF(%ebx)	#
 1097      0000
 1098 0a92 DEC1     		faddp	%st, %st(1)	#,
 1099              	.LVL133:
 1100 0a94 DD8550FE 		fldl	-432(%ebp)	# %sfp
 1100      FFFF
 1101              	.LVL134:
 1102 0a9a DC8B0000 		fmull	.LC38@GOTOFF(%ebx)	#
 1102      0000
 1103              	.LVL135:
 1104 0aa0 D9C1     		fld	%st(1)	#
 1105              	.LVL136:
 1106 0aa2 D8C1     		fadd	%st(1), %st	#,
 1107 0aa4 DD17     		fstl	(%edi)	#* pyh
 1108 0aa6 D9C2     		fld	%st(2)	#
 1109 0aa8 D9EE     		fldz
 1110 0aaa D9CC     		fxch	%st(4)	#
 1111 0aac DBEC     		fucomi	%st(4), %st	#,
 1112 0aae DDDC     		fstp	%st(4)	#
 1113 0ab0 7702     		ja	.L28	#,
 1114 0ab2 D9E0     		fchs
 1115              	.L28:
 1116 0ab4 D9C2     		fld	%st(2)	#
 1117 0ab6 D9EE     		fldz
 1118 0ab8 D9CC     		fxch	%st(4)	#
 1119 0aba DBEC     		fucomi	%st(4), %st	#,
 1120 0abc DDDC     		fstp	%st(4)	#
 1121 0abe 7712     		ja	.L48	#,
 1122 0ac0 DDD8     		fstp	%st(0)	#
 1123 0ac2 DD8550FE 		fldl	-432(%ebp)	# %sfp
 1123      FFFF
 1124 0ac8 DC8B0000 		fmull	.LC39@GOTOFF(%ebx)	#
 1124      0000
 1125 0ace D9C9     		fxch	%st(1)	#
 1126 0ad0 EB02     		jmp	.L31	#
 1127              	.L48:
 1128 0ad2 D9C9     		fxch	%st(1)	#
 1129              	.L31:
 1130 0ad4 DFE9     		fucomip	%st(1), %st	#,
 1131 0ad6 DDD8     		fstp	%st(0)	#
 1132 0ad8 7611     		jbe	.L46	#,
 1133              	.LVL137:
 1134 0ada DEE2     		fsubp	%st, %st(2)	#,
 1135              	.LVL138:
 1136 0adc DEE1     		fsubp	%st, %st(1)	#,
 1137 0ade 8B8534FE 		movl	-460(%ebp), %eax	# %sfp,
 1137      FFFF
 1138 0ae4 DD18     		fstpl	(%eax)	#
 1139 0ae6 E9860500 		jmp	.L24	#
 1139      00
 1140              	.LVL139:
 1141              	.L46:
 1142 0aeb DEE1     		fsubp	%st, %st(1)	#,
 1143              	.LVL140:
 1144 0aed DEE9     		fsubrp	%st, %st(1)	#,
 1145              	.LVL141:
 1146 0aef 8B8534FE 		movl	-460(%ebp), %eax	# %sfp,
 1146      FFFF
 1147 0af5 DD18     		fstpl	(%eax)	#
 1148 0af7 E9750500 		jmp	.L24	#
 1148      00
 1149              	.LVL142:
 1150              	.L22:
 1151              	.LBE45:
 195:trigo_fast.c  ****   else  if ( absxhi < XMAX_DDRR ) {
 1152              		.loc 1 195 0
 1153 0afc 81FEFA21 		cmpl	$1119429114, %esi	#, absxhi
 1153      B942
 1154 0b02 0F8F8804 		jg	.L34	#,
 1154      0000
 1155              	.LBB46:
 1156              	.LBB47:
 198:trigo_fast.c  ****     DOUBLE2LONGINT(kl, x*INV_PIO256);
 1157              		.loc 1 198 0
 1158 0b08 DD8548FE 		fldl	-440(%ebp)	# %sfp
 1158      FFFF
 1159 0b0e DC8B0000 		fmull	.LC15@GOTOFF(%ebx)	#
 1159      0000
 1160 0b14 D9C0     		fld	%st(0)	#
 1161 0b16 D8830000 		fadds	.LC19@GOTOFF(%ebx)	#
 1161      0000
 1162 0b1c DD9D40FE 		fstpl	-448(%ebp)	# %sfp
 1162      FFFF
 1163 0b22 D9EE     		fldz
 1164 0b24 D9C9     		fxch	%st(1)	#
 1165 0b26 DFE9     		fucomip	%st(1), %st	#,
 1166 0b28 DDD8     		fstp	%st(0)	#
 1167 0b2a 7214     		jb	.L47	#,
 1168 0b2c 8B8540FE 		movl	-448(%ebp), %eax	# %sfp, kl
 1168      FFFF
 1169 0b32 8B9544FE 		movl	-444(%ebp), %edx	# %sfp,
 1169      FFFF
 1170 0b38 81E2FFFF 		andl	$524287, %edx	#,
 1170      0700
 1171              	.LVL143:
 1172 0b3e EB12     		jmp	.L37	#
 1173              	.LVL144:
 1174              	.L47:
 1175 0b40 8B8540FE 		movl	-448(%ebp), %eax	# %sfp, kl
 1175      FFFF
 1176 0b46 8B9544FE 		movl	-444(%ebp), %edx	# %sfp,
 1176      FFFF
 1177 0b4c 81CA0000 		orl	$-524288, %edx	#,
 1177      F8FF
 1178              	.LVL145:
 1179              	.L37:
 1180              	.LBE47:
 200:trigo_fast.c  ****     k = (int) kl;
 1181              		.loc 1 200 0
 1182 0b52 898540FE 		movl	%eax, -448(%ebp)	# kl, %sfp
 1182      FFFF
 1183              	.LVL146:
 204:trigo_fast.c  ****     if((k&127) == 0) { 
 1184              		.loc 1 204 0
 1185 0b58 A87F     		testb	$127, %al	#,
 1186 0b5a 0F859F00 		jne	.L38	#,
 1186      0000
 1187              	.LBB48:
 206:trigo_fast.c  ****       scs_set_d(X, x*128.0); 
 1188              		.loc 1 206 0
 1189 0b60 DD8548FE 		fldl	-440(%ebp)	# %sfp
 1189      FFFF
 1190 0b66 D88B0000 		fmuls	.LC40@GOTOFF(%ebx)	#
 1190      0000
 1191 0b6c DD5C2404 		fstpl	4(%esp)	#
 1192 0b70 8D75B8   		leal	-72(%ebp), %esi	#, tmp231
 1193 0b73 893424   		movl	%esi, (%esp)	# tmp231,
 1194 0b76 E8FCFFFF 		call	scs_set_d@PLT	#
 1194      FF
 1195              	.LVL147:
 207:trigo_fast.c  ****       k= rem_pio2_scs(Y, X);
 1196              		.loc 1 207 0
 1197 0b7b 89742404 		movl	%esi, 4(%esp)	# tmp231,
 1198 0b7f 8D7588   		leal	-120(%ebp), %esi	#, tmp233
 1199 0b82 893424   		movl	%esi, (%esp)	# tmp233,
 1200 0b85 E8FCFFFF 		call	rem_pio2_scs@PLT	#
 1200      FF
 1201 0b8a 898540FE 		movl	%eax, -448(%ebp)	#, %sfp
 1201      FFFF
 1202              	.LVL148:
 209:trigo_fast.c  ****       scs_get_d(pyh, Y);
 1203              		.loc 1 209 0
 1204 0b90 89742404 		movl	%esi, 4(%esp)	# tmp233,
 1205 0b94 893C24   		movl	%edi, (%esp)	# pyh,
 1206 0b97 E8FCFFFF 		call	scs_get_d@PLT	#
 1206      FF
 1207              	.LVL149:
 210:trigo_fast.c  ****       scs_set_d(Yh, *pyh);
 1208              		.loc 1 210 0
 1209 0b9c DD07     		fldl	(%edi)	#* pyh
 1210 0b9e DD5C2404 		fstpl	4(%esp)	#
 1211 0ba2 8D8558FF 		leal	-168(%ebp), %eax	#,
 1211      FFFF
 1212 0ba8 898548FE 		movl	%eax, -440(%ebp)	#, %sfp
 1212      FFFF
 1213 0bae 890424   		movl	%eax, (%esp)	#,
 1214 0bb1 E8FCFFFF 		call	scs_set_d@PLT	#
 1214      FF
 211:trigo_fast.c  ****       scs_sub(Yl, Y,Yh);
 1215              		.loc 1 211 0
 1216 0bb6 8B8548FE 		movl	-440(%ebp), %eax	# %sfp,
 1216      FFFF
 1217 0bbc 89442408 		movl	%eax, 8(%esp)	#,
 1218 0bc0 89742404 		movl	%esi, 4(%esp)	# tmp233,
 1219 0bc4 8DB528FF 		leal	-216(%ebp), %esi	#, tmp239
 1219      FFFF
 1220 0bca 893424   		movl	%esi, (%esp)	# tmp239,
 1221 0bcd E8FCFFFF 		call	scs_sub@PLT	#
 1221      FF
 212:trigo_fast.c  ****       scs_get_d(pyl, Yl);
 1222              		.loc 1 212 0
 1223 0bd2 89742404 		movl	%esi, 4(%esp)	# tmp239,
 1224 0bd6 8B8534FE 		movl	-460(%ebp), %eax	# %sfp,
 1224      FFFF
 1225 0bdc 890424   		movl	%eax, (%esp)	#,
 1226 0bdf E8FCFFFF 		call	scs_get_d@PLT	#
 1226      FF
 213:trigo_fast.c  ****       *pyh = *pyh * (1./128.) ;
 1227              		.loc 1 213 0
 1228 0be4 D9830000 		flds	.LC41@GOTOFF(%ebx)	#
 1228      0000
 1229 0bea DD07     		fldl	(%edi)	#* pyh
 1230 0bec D8C9     		fmul	%st(1), %st	#,
 1231 0bee DD1F     		fstpl	(%edi)	#* pyh
 214:trigo_fast.c  ****       *pyl = *pyl * (1./128.) ;
 1232              		.loc 1 214 0
 1233 0bf0 8B8534FE 		movl	-460(%ebp), %eax	# %sfp,
 1233      FFFF
 1234 0bf6 DC08     		fmull	(%eax)	#
 1235 0bf8 DD18     		fstpl	(%eax)	#
 1236 0bfa E9720400 		jmp	.L24	#
 1236      00
 1237              	.LVL150:
 1238              	.L38:
 1239              	.LBE48:
 199:trigo_fast.c  ****     kd=(double)kl;
 1240              		.loc 1 199 0
 1241 0bff 898558FE 		movl	%eax, -424(%ebp)	# kl,
 1241      FFFF
 1242 0c05 89955CFE 		movl	%edx, -420(%ebp)	# kl,
 1242      FFFF
 1243 0c0b DFAD58FE 		fildll	-424(%ebp)	#
 1243      FFFF
 1244 0c11 DD9D50FE 		fstpl	-432(%ebp)	# %sfp
 1244      FFFF
 1245              	.LBB49:
 218:trigo_fast.c  ****       Mul12(&kch_h, &kch_l,   kd, RR_DD_MCH);
 1246              		.loc 1 218 0
 1247 0c17 8D830000 		leal	.LC1@GOTOFF(%ebx), %eax	#,
 1247      0000
 1248              	.LVL151:
 1249 0c1d 8985F4FD 		movl	%eax, -524(%ebp)	#, %sfp
 1249      FFFF
 1250 0c23 890424   		movl	%eax, (%esp)	#,
 1251 0c26 E8FCFFFF 		call	puts@PLT	#
 1251      FF
 1252 0c2b 8D830000 		leal	.LC2@GOTOFF(%ebx), %eax	#,
 1252      0000
 1253 0c31 8985F8FD 		movl	%eax, -520(%ebp)	#, %sfp
 1253      FFFF
 1254 0c37 C744241C 		movl	$1413754136, 28(%esp)	#,
 1254      182D4454 
 1255 0c3f C7442420 		movl	$-1081531909, 32(%esp)	#,
 1255      FB2189BF 
 1256 0c47 DD8550FE 		fldl	-432(%ebp)	# %sfp
 1256      FFFF
 1257 0c4d DD5C2414 		fstpl	20(%esp)	#
 1258 0c51 D9EE     		fldz
 1259 0c53 DD54240C 		fstl	12(%esp)	#
 1260 0c57 DD5C2404 		fstpl	4(%esp)	#
 1261 0c5b 890424   		movl	%eax, (%esp)	#,
 1262 0c5e E8FCFFFF 		call	printf@PLT	#
 1262      FF
 1263              	.LVL152:
 1264 0c63 8D830000 		leal	.LC3@GOTOFF(%ebx), %eax	#,
 1264      0000
 1265 0c69 8985FCFD 		movl	%eax, -516(%ebp)	#, %sfp
 1265      FFFF
 1266 0c6f C744240C 		movl	$1413754136, 12(%esp)	#,
 1266      182D4454 
 1267 0c77 C7442410 		movl	$-1081531909, 16(%esp)	#,
 1267      FB2189BF 
 1268 0c7f DD8550FE 		fldl	-432(%ebp)	# %sfp
 1268      FFFF
 1269 0c85 DD5C2404 		fstpl	4(%esp)	#
 1270 0c89 890424   		movl	%eax, (%esp)	#,
 1271 0c8c E8FCFFFF 		call	printf@PLT	#
 1271      FF
 1272 0c91 DD8550FE 		fldl	-432(%ebp)	# %sfp
 1272      FFFF
 1273 0c97 DC8B0000 		fmull	.LC4@GOTOFF(%ebx)	#
 1273      0000
 1274 0c9d DD9538FE 		fstl	-456(%ebp)	# %sfp
 1274      FFFF
 1275              	.LVL153:
 1276 0ca3 8D830000 		leal	.LC5@GOTOFF(%ebx), %eax	#,
 1276      0000
 1277 0ca9 898500FE 		movl	%eax, -512(%ebp)	#, %sfp
 1277      FFFF
 1278 0caf C744240C 		movl	$1466461315, 12(%esp)	#,
 1278      836C6857 
 1279 0cb7 C7442410 		movl	$-1053220357, 16(%esp)	#,
 1279      FB2139C1 
 1280 0cbf DD5C2404 		fstpl	4(%esp)	#
 1281 0cc3 890424   		movl	%eax, (%esp)	#,
 1282 0cc6 E8FCFFFF 		call	printf@PLT	#
 1282      FF
 1283              	.LVL154:
 1284 0ccb DD8550FE 		fldl	-432(%ebp)	# %sfp
 1284      FFFF
 1285 0cd1 DCA538FE 		fsubl	-456(%ebp)	# %sfp
 1285      FFFF
 1286 0cd7 DC8538FE 		faddl	-456(%ebp)	# %sfp
 1286      FFFF
 1287 0cdd DD9D28FE 		fstpl	-472(%ebp)	# %sfp
 1287      FFFF
 1288              	.LVL155:
 1289 0ce3 8D830000 		leal	.LC6@GOTOFF(%ebx), %eax	#,
 1289      0000
 1290 0ce9 898504FE 		movl	%eax, -508(%ebp)	#, %sfp
 1290      FFFF
 1291 0cef C744240C 		movl	$1466461315, 12(%esp)	#,
 1291      836C6857 
 1292 0cf7 C7442410 		movl	$-1053220357, 16(%esp)	#,
 1292      FB2139C1 
 1293 0cff DD8538FE 		fldl	-456(%ebp)	# %sfp
 1293      FFFF
 1294              	.LVL156:
 1295 0d05 DD5C2404 		fstpl	4(%esp)	#
 1296 0d09 890424   		movl	%eax, (%esp)	#,
 1297 0d0c E8FCFFFF 		call	printf@PLT	#
 1297      FF
 1298 0d11 DD8550FE 		fldl	-432(%ebp)	# %sfp
 1298      FFFF
 1299 0d17 DCA528FE 		fsubl	-472(%ebp)	# %sfp
 1299      FFFF
 1300 0d1d DD9D18FE 		fstpl	-488(%ebp)	# %sfp
 1300      FFFF
 1301              	.LVL157:
 1302 0d23 8D830000 		leal	.LC7@GOTOFF(%ebx), %eax	#,
 1302      0000
 1303 0d29 898508FE 		movl	%eax, -504(%ebp)	#, %sfp
 1303      FFFF
 1304 0d2f C744240C 		movl	$1466461315, 12(%esp)	#,
 1304      836C6857 
 1305 0d37 C7442410 		movl	$-1053220357, 16(%esp)	#,
 1305      FB2139C1 
 1306 0d3f DD8538FE 		fldl	-456(%ebp)	# %sfp
 1306      FFFF
 1307              	.LVL158:
 1308 0d45 DD5C2404 		fstpl	4(%esp)	#
 1309 0d49 890424   		movl	%eax, (%esp)	#,
 1310 0d4c E8FCFFFF 		call	printf@PLT	#
 1310      FF
 1311 0d51 8D830000 		leal	.LC17@GOTOFF(%ebx), %eax	#,
 1311      0000
 1312 0d57 DD00     		fldl	(%eax)	#
 1313 0d59 DC8D50FE 		fmull	-432(%ebp)	# %sfp
 1313      FFFF
 1314 0d5f DD9510FE 		fstl	-496(%ebp)	# %sfp
 1314      FFFF
 1315              	.LVL159:
 1316 0d65 DD830000 		fldl	.LC25@GOTOFF(%ebx)	#
 1316      0000
 1317              	.LVL160:
 1318 0d6b DD8528FE 		fldl	-472(%ebp)	# %sfp
 1318      FFFF
 1319 0d71 D8C9     		fmul	%st(1), %st	#,
 1320 0d73 DEE2     		fsubp	%st, %st(2)	#,
 1321 0d75 D9830000 		flds	.LC26@GOTOFF(%ebx)	#
 1321      0000
 1322 0d7b DD8528FE 		fldl	-472(%ebp)	# %sfp
 1322      FFFF
 1323 0d81 D8C9     		fmul	%st(1), %st	#,
 1324 0d83 DEC3     		faddp	%st, %st(3)	#,
 1325 0d85 D9C9     		fxch	%st(1)	#
 1326 0d87 DC8D18FE 		fmull	-488(%ebp)	# %sfp
 1326      FFFF
 1327 0d8d DEC2     		faddp	%st, %st(2)	#,
 1328 0d8f DC8D18FE 		fmull	-488(%ebp)	# %sfp
 1328      FFFF
 1329 0d95 DEC1     		faddp	%st, %st(1)	#,
 1330 0d97 DD9520FE 		fstl	-480(%ebp)	# %sfp
 1330      FFFF
 1331              	.LVL161:
 1332 0d9d 8D830000 		leal	.LC8@GOTOFF(%ebx), %eax	#,
 1332      0000
 1333 0da3 89850CFE 		movl	%eax, -500(%ebp)	#, %sfp
 1333      FFFF
 1334 0da9 DD5C240C 		fstpl	12(%esp)	#
 1335 0dad DD8510FE 		fldl	-496(%ebp)	# %sfp
 1335      FFFF
 1336              	.LVL162:
 1337 0db3 DD5C2404 		fstpl	4(%esp)	#
 1338 0db7 890424   		movl	%eax, (%esp)	#,
 1339 0dba E8FCFFFF 		call	printf@PLT	#
 1339      FF
 1340 0dbf 8DB30000 		leal	.LC9@GOTOFF(%ebx), %esi	#, temp.235
 1340      0000
 1341 0dc5 DD8520FE 		fldl	-480(%ebp)	# %sfp
 1341      FFFF
 1342 0dcb DD5C2404 		fstpl	4(%esp)	#
 1343 0dcf 893424   		movl	%esi, (%esp)	# temp.235,
 1344 0dd2 E8FCFFFF 		call	printf@PLT	#
 1344      FF
 1345              	.LBE49:
 1346              	.LBB50:
 219:trigo_fast.c  ****       Mul12(&kcm_h, &kcm_l,   kd, RR_DD_MCM);
 1347              		.loc 1 219 0
 1348 0dd7 8B85F4FD 		movl	-524(%ebp), %eax	# %sfp,
 1348      FFFF
 1349 0ddd 890424   		movl	%eax, (%esp)	#,
 1350 0de0 E8FCFFFF 		call	puts@PLT	#
 1350      FF
 1351 0de5 C744241C 		movl	$856972295, 28(%esp)	#,
 1351      075C1433 
 1352 0ded C7442420 		movl	$-1138645466, 32(%esp)	#,
 1352      26A621BC 
 1353 0df5 DD8550FE 		fldl	-432(%ebp)	# %sfp
 1353      FFFF
 1354 0dfb DD5C2414 		fstpl	20(%esp)	#
 1355 0dff D9EE     		fldz
 1356 0e01 DD54240C 		fstl	12(%esp)	#
 1357 0e05 DD5C2404 		fstpl	4(%esp)	#
 1358 0e09 8B85F8FD 		movl	-520(%ebp), %eax	# %sfp,
 1358      FFFF
 1359 0e0f 890424   		movl	%eax, (%esp)	#,
 1360 0e12 E8FCFFFF 		call	printf@PLT	#
 1360      FF
 1361              	.LVL163:
 1362 0e17 C744240C 		movl	$856972295, 12(%esp)	#,
 1362      075C1433 
 1363 0e1f C7442410 		movl	$-1138645466, 16(%esp)	#,
 1363      26A621BC 
 1364 0e27 DD8550FE 		fldl	-432(%ebp)	# %sfp
 1364      FFFF
 1365 0e2d DD5C2404 		fstpl	4(%esp)	#
 1366 0e31 8B85FCFD 		movl	-516(%ebp), %eax	# %sfp,
 1366      FFFF
 1367 0e37 890424   		movl	%eax, (%esp)	#,
 1368 0e3a E8FCFFFF 		call	printf@PLT	#
 1368      FF
 1369              	.LVL164:
 1370 0e3f C744240C 		movl	$893984973, 12(%esp)	#,
 1370      CD204935 
 1371 0e47 C7442410 		movl	$-1110333914, 16(%esp)	#,
 1371      26A6D1BD 
 1372 0e4f DD8538FE 		fldl	-456(%ebp)	# %sfp
 1372      FFFF
 1373 0e55 DD5C2404 		fstpl	4(%esp)	#
 1374 0e59 8B8500FE 		movl	-512(%ebp), %eax	# %sfp,
 1374      FFFF
 1375 0e5f 890424   		movl	%eax, (%esp)	#,
 1376 0e62 E8FCFFFF 		call	printf@PLT	#
 1376      FF
 1377              	.LVL165:
 1378 0e67 C744240C 		movl	$893984973, 12(%esp)	#,
 1378      CD204935 
 1379 0e6f C7442410 		movl	$-1110333914, 16(%esp)	#,
 1379      26A6D1BD 
 1380 0e77 DD8538FE 		fldl	-456(%ebp)	# %sfp
 1380      FFFF
 1381 0e7d DD5C2404 		fstpl	4(%esp)	#
 1382 0e81 8B8504FE 		movl	-508(%ebp), %eax	# %sfp,
 1382      FFFF
 1383 0e87 890424   		movl	%eax, (%esp)	#,
 1384 0e8a E8FCFFFF 		call	printf@PLT	#
 1384      FF
 1385              	.LVL166:
 1386 0e8f C744240C 		movl	$893984973, 12(%esp)	#,
 1386      CD204935 
 1387 0e97 C7442410 		movl	$-1110333914, 16(%esp)	#,
 1387      26A6D1BD 
 1388 0e9f DD8538FE 		fldl	-456(%ebp)	# %sfp
 1388      FFFF
 1389 0ea5 DD5C2404 		fstpl	4(%esp)	#
 1390 0ea9 8B8508FE 		movl	-504(%ebp), %eax	# %sfp,
 1390      FFFF
 1391 0eaf 890424   		movl	%eax, (%esp)	#,
 1392 0eb2 E8FCFFFF 		call	printf@PLT	#
 1392      FF
 1393 0eb7 8D830000 		leal	.LC29@GOTOFF(%ebx), %eax	#,
 1393      0000
 1394 0ebd DD00     		fldl	(%eax)	#
 1395 0ebf DC8D50FE 		fmull	-432(%ebp)	# %sfp
 1395      FFFF
 1396 0ec5 DD9538FE 		fstl	-456(%ebp)	# %sfp
 1396      FFFF
 1397              	.LVL167:
 1398 0ecb DD830000 		fldl	.LC31@GOTOFF(%ebx)	#
 1398      0000
 1399              	.LVL168:
 1400 0ed1 DD8528FE 		fldl	-472(%ebp)	# %sfp
 1400      FFFF
 1401 0ed7 D8C9     		fmul	%st(1), %st	#,
 1402 0ed9 DEE2     		fsubp	%st, %st(2)	#,
 1403 0edb DD830000 		fldl	.LC32@GOTOFF(%ebx)	#
 1403      0000
 1404 0ee1 DD8528FE 		fldl	-472(%ebp)	# %sfp
 1404      FFFF
 1405 0ee7 D8C9     		fmul	%st(1), %st	#,
 1406 0ee9 DEC3     		faddp	%st, %st(3)	#,
 1407 0eeb D9C9     		fxch	%st(1)	#
 1408 0eed DC8D18FE 		fmull	-488(%ebp)	# %sfp
 1408      FFFF
 1409 0ef3 DEC2     		faddp	%st, %st(2)	#,
 1410 0ef5 DC8D18FE 		fmull	-488(%ebp)	# %sfp
 1410      FFFF
 1411 0efb DEC1     		faddp	%st, %st(1)	#,
 1412 0efd DD9528FE 		fstl	-472(%ebp)	# %sfp
 1412      FFFF
 1413              	.LVL169:
 1414 0f03 DD5C240C 		fstpl	12(%esp)	#
 1415 0f07 DD8538FE 		fldl	-456(%ebp)	# %sfp
 1415      FFFF
 1416              	.LVL170:
 1417 0f0d DD5C2404 		fstpl	4(%esp)	#
 1418 0f11 8B850CFE 		movl	-500(%ebp), %eax	# %sfp,
 1418      FFFF
 1419 0f17 890424   		movl	%eax, (%esp)	#,
 1420 0f1a E8FCFFFF 		call	printf@PLT	#
 1420      FF
 1421 0f1f DD8528FE 		fldl	-472(%ebp)	# %sfp
 1421      FFFF
 1422 0f25 DD5C2404 		fstpl	4(%esp)	#
 1423 0f29 893424   		movl	%esi, (%esp)	# temp.235,
 1424 0f2c E8FCFFFF 		call	printf@PLT	#
 1424      FF
 1425              	.LVL171:
 1426              	.LBE50:
 1427              	.LBB51:
 220:trigo_fast.c  ****       Add12 (th,tl,  kch_l, kcm_h) ;
 1428              		.loc 1 220 0
 1429 0f31 DD8520FE 		fldl	-480(%ebp)	# %sfp
 1429      FFFF
 1430 0f37 DC8538FE 		faddl	-456(%ebp)	# %sfp
 1430      FFFF
 1431              	.LVL172:
 1432              	.LBE51:
 1433              	.LBB52:
 222:trigo_fast.c  ****       Add22 (pyh, pyl,    (x + kch_h) , (kcm_l - kd*RR_DD_CL),   th, tl) ;
 1434              		.loc 1 222 0
 1435 0f3d DD8548FE 		fldl	-440(%ebp)	# %sfp
 1435      FFFF
 1436              	.LVL173:
 1437 0f43 DC8510FE 		faddl	-496(%ebp)	# %sfp
 1437      FFFF
 1438 0f49 D9C0     		fld	%st(0)	#
 1439 0f4b D8C2     		fadd	%st(2), %st	#,
 1440              	.LVL174:
 1441 0f4d DCE9     		fsubr	%st, %st(1)	#,
 1442 0f4f D9C9     		fxch	%st(1)	#
 1443              	.LVL175:
 1444 0f51 D8C2     		fadd	%st(2), %st	#,
 1445 0f53 D9CA     		fxch	%st(2)	#
 1446              	.LBE52:
 1447              	.LBB53:
 1448 0f55 DCA520FE 		fsubl	-480(%ebp)	# %sfp
 1448      FFFF
 1449 0f5b DD8538FE 		fldl	-456(%ebp)	# %sfp
 1449      FFFF
 1450 0f61 DEE1     		fsubp	%st, %st(1)	#,
 1451              	.LBE53:
 1452              	.LBB54:
 1453 0f63 DEC2     		faddp	%st, %st(2)	#,
 1454 0f65 DD8550FE 		fldl	-432(%ebp)	# %sfp
 1454      FFFF
 1455 0f6b DC8B0000 		fmull	.LC33@GOTOFF(%ebx)	#
 1455      0000
 1456 0f71 DC8528FE 		faddl	-472(%ebp)	# %sfp
 1456      FFFF
 1457 0f77 DEC2     		faddp	%st, %st(2)	#,
 1458              	.LVL176:
 1459 0f79 D9C0     		fld	%st(0)	#
 1460 0f7b D8C2     		fadd	%st(2), %st	#,
 1461 0f7d DD17     		fstl	(%edi)	#* pyh
 1462 0f7f DEE9     		fsubrp	%st, %st(1)	#,
 1463              	.LVL177:
 1464 0f81 DEC1     		faddp	%st, %st(1)	#,
 1465 0f83 8B8534FE 		movl	-460(%ebp), %eax	# %sfp,
 1465      FFFF
 1466 0f89 DD18     		fstpl	(%eax)	#
 1467 0f8b E9E10000 		jmp	.L24	#
 1467      00
 1468              	.LVL178:
 1469              	.L34:
 1470              	.LBE54:
 1471              	.LBE46:
 1472              	.LBB55:
 227:trigo_fast.c  ****     if (absxhi > 0x7F700000) /*2^(1023-7)*/
 1473              		.loc 1 227 0
 1474 0f90 81FE0000 		cmpl	$2138046464, %esi	#, absxhi
 1474      707F
 1475 0f96 7E39     		jle	.L39	#,
 228:trigo_fast.c  ****       return (*scs_fun)(x);
 1476              		.loc 1 228 0
 1477 0f98 DD8548FE 		fldl	-440(%ebp)	# %sfp
 1477      FFFF
 1478 0f9e DD1C24   		fstpl	(%esp)	#
 1479 0fa1 FF5514   		call	*20(%ebp)	# scs_fun
 1480 0fa4 D9BD66FE 		fnstcw	-410(%ebp)	#
 1480      FFFF
 1481 0faa 0FB78566 		movzwl	-410(%ebp), %eax	#, tmp327
 1481      FEFFFF
 1482 0fb1 B40C     		movb	$12, %ah	#, tmp327
 1483 0fb3 66898564 		movw	%ax, -412(%ebp)	# tmp327,
 1483      FEFFFF
 1484 0fba D9AD64FE 		fldcw	-412(%ebp)	#
 1484      FFFF
 1485 0fc0 DB9D40FE 		fistpl	-448(%ebp)	# %sfp
 1485      FFFF
 1486 0fc6 D9AD66FE 		fldcw	-410(%ebp)	#
 1486      FFFF
 1487 0fcc E9AC0000 		jmp	.L40	#
 1487      00
 1488              	.L39:
 230:trigo_fast.c  ****       scs_set_d(X, x*128.0); 
 1489              		.loc 1 230 0
 1490 0fd1 DD8548FE 		fldl	-440(%ebp)	# %sfp
 1490      FFFF
 1491 0fd7 D88B0000 		fmuls	.LC40@GOTOFF(%ebx)	#
 1491      0000
 1492 0fdd DD5C2404 		fstpl	4(%esp)	#
 1493 0fe1 8DB5F8FE 		leal	-264(%ebp), %esi	#, tmp302
 1493      FFFF
 1494 0fe7 893424   		movl	%esi, (%esp)	# tmp302,
 1495 0fea E8FCFFFF 		call	scs_set_d@PLT	#
 1495      FF
 231:trigo_fast.c  ****       k= rem_pio2_scs(Y, X);
 1496              		.loc 1 231 0
 1497 0fef 89742404 		movl	%esi, 4(%esp)	# tmp302,
 1498 0ff3 8DB5C8FE 		leal	-312(%ebp), %esi	#, tmp304
 1498      FFFF
 1499 0ff9 893424   		movl	%esi, (%esp)	# tmp304,
 1500 0ffc E8FCFFFF 		call	rem_pio2_scs@PLT	#
 1500      FF
 1501 1001 898540FE 		movl	%eax, -448(%ebp)	#, %sfp
 1501      FFFF
 1502              	.LVL179:
 233:trigo_fast.c  ****       scs_get_d(pyh, Y);
 1503              		.loc 1 233 0
 1504 1007 89742404 		movl	%esi, 4(%esp)	# tmp304,
 1505 100b 893C24   		movl	%edi, (%esp)	# pyh,
 1506 100e E8FCFFFF 		call	scs_get_d@PLT	#
 1506      FF
 1507              	.LVL180:
 234:trigo_fast.c  ****       scs_set_d(Yh, *pyh);
 1508              		.loc 1 234 0
 1509 1013 DD07     		fldl	(%edi)	#* pyh
 1510 1015 DD5C2404 		fstpl	4(%esp)	#
 1511 1019 8D8598FE 		leal	-360(%ebp), %eax	#,
 1511      FFFF
 1512 101f 898548FE 		movl	%eax, -440(%ebp)	#, %sfp
 1512      FFFF
 1513 1025 890424   		movl	%eax, (%esp)	#,
 1514 1028 E8FCFFFF 		call	scs_set_d@PLT	#
 1514      FF
 235:trigo_fast.c  ****       scs_sub(Yl, Y,Yh);
 1515              		.loc 1 235 0
 1516 102d 8B8548FE 		movl	-440(%ebp), %eax	# %sfp,
 1516      FFFF
 1517 1033 89442408 		movl	%eax, 8(%esp)	#,
 1518 1037 89742404 		movl	%esi, 4(%esp)	# tmp304,
 1519 103b 8DB568FE 		leal	-408(%ebp), %esi	#, tmp310
 1519      FFFF
 1520 1041 893424   		movl	%esi, (%esp)	# tmp310,
 1521 1044 E8FCFFFF 		call	scs_sub@PLT	#
 1521      FF
 236:trigo_fast.c  ****       scs_get_d(pyl, Yl);
 1522              		.loc 1 236 0
 1523 1049 89742404 		movl	%esi, 4(%esp)	# tmp310,
 1524 104d 8B8534FE 		movl	-460(%ebp), %eax	# %sfp,
 1524      FFFF
 1525 1053 890424   		movl	%eax, (%esp)	#,
 1526 1056 E8FCFFFF 		call	scs_get_d@PLT	#
 1526      FF
 237:trigo_fast.c  ****       *pyh = *pyh * (1./128.) ;
 1527              		.loc 1 237 0
 1528 105b D9830000 		flds	.LC41@GOTOFF(%ebx)	#
 1528      0000
 1529 1061 DD07     		fldl	(%edi)	#* pyh
 1530 1063 D8C9     		fmul	%st(1), %st	#,
 1531 1065 DD1F     		fstpl	(%edi)	#* pyh
 238:trigo_fast.c  ****       *pyl = *pyl * (1./128.) ;
 1532              		.loc 1 238 0
 1533 1067 8B8534FE 		movl	-460(%ebp), %eax	# %sfp,
 1533      FFFF
 1534 106d DC08     		fmull	(%eax)	#
 1535 106f DD18     		fstpl	(%eax)	#
 1536              	.L24:
 1537              	.LBE55:
 241:trigo_fast.c  ****   printf("\n");
 1538              		.loc 1 241 0
 1539 1071 C704240A 		movl	$10, (%esp)	#,
 1539      000000
 1540 1078 E8FCFFFF 		call	putchar@PLT	#
 1540      FF
 1541              	.LVL181:
 1542              	.L40:
 243:trigo_fast.c  **** }
 1543              		.loc 1 243 0
 1544 107d 8B8540FE 		movl	-448(%ebp), %eax	# %sfp,
 1544      FFFF
 1545 1083 81C43C02 		addl	$572, %esp	#,
 1545      0000
 1546 1089 5B       		popl	%ebx	#
 1547              		.cfi_restore 3
 1548 108a 5E       		popl	%esi	#
 1549              		.cfi_restore 6
 1550 108b 5F       		popl	%edi	#
 1551              		.cfi_restore 7
 1552              	.LVL182:
 1553 108c 5D       		popl	%ebp	#
 1554              		.cfi_restore 5
 1555              		.cfi_def_cfa 4, 4
 1556 108d C3       		ret
 1557              		.cfi_endproc
 1558              	.LFE9:
 1560              		.section	.rodata.str1.4
 1561 0093 00       		.align 4
 1562              	.LC42:
 1563 0094 45525245 		.string	"ERREUR: %d is not a valid value in sn_tan \n"
 1563      55523A20 
 1563      25642069 
 1563      73206E6F 
 1563      74206120 
 1564              		.text
 1565              	.globl tan_rn
 1567              	tan_rn:
 1568              	.LFB18:
 470:trigo_fast.c  **** double tan_rn(double x){  
 1569              		.loc 1 470 0
 1570              		.cfi_startproc
 1571              	.LVL183:
 1572 108e 55       		pushl	%ebp	#
 1573              		.cfi_def_cfa_offset 8
 1574              		.cfi_offset 5, -8
 1575 108f 89E5     		movl	%esp, %ebp	#,
 1576              		.cfi_def_cfa_register 5
 1577 1091 56       		pushl	%esi	#
 1578 1092 53       		pushl	%ebx	#
 1579 1093 81ECB000 		subl	$176, %esp	#,
 1579      0000
 1580              		.cfi_offset 3, -16
 1581              		.cfi_offset 6, -12
 1582 1099 E8FCFFFF 		call	__i686.get_pc_thunk.bx	#
 1582      FF
 1583 109e 81C30200 		addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
 1583      0000
 1584 10a4 DD4508   		fldl	8(%ebp)	# x
 1585 10a7 DD55B8   		fstl	-72(%ebp)	# %sfp
 483:trigo_fast.c  ****   xx.d=x;
 1586              		.loc 1 483 0
 1587 10aa DD55C0   		fstl	-64(%ebp)	# %sfp
 484:trigo_fast.c  ****   absxhi = xx.i[HI_ENDIAN] & 0x7fffffff;
 1588              		.loc 1 484 0
 1589 10ad 8B4DC4   		movl	-60(%ebp), %ecx	# %sfp, D.2501
 1590              	.LVL184:
 488:trigo_fast.c  ****     if((y.i[HI_ENDIAN]&0x7FFFFFFF) < 0x3E4BEAD3){	/* Test if |x| < (1+e)2^(-26) */
 1591              		.loc 1 488 0
 1592 10b0 8B45C4   		movl	-60(%ebp), %eax	# %sfp, tmp85
 1593 10b3 25FFFFFF 		andl	$2147483647, %eax	#, tmp85
 1593      7F
 1594 10b8 3DD2EA4B 		cmpl	$1045162706, %eax	#, tmp85
 1594      3E
 1595 10bd 0F8E5D04 		jle	.L51	#,
 1595      0000
 498:trigo_fast.c  ****   k=trig_range_reduction(&yh, &yl,  x, absxhi, &scs_cos_rn);
 1596              		.loc 1 498 0
 1597 10c3 8D55C8   		leal	-56(%ebp), %edx	#, tmp86
 1598 10c6 8D45D0   		leal	-48(%ebp), %eax	#, tmp87
 1599 10c9 8BB30000 		movl	scs_cos_rn@GOT(%ebx), %esi	#, tmp89
 1599      0000
 1600 10cf 8974240C 		movl	%esi, 12(%esp)	# tmp89,
 1601 10d3 81E1FFFF 		andl	$2147483647, %ecx	#, tmp90
 1601      FF7F
 1602 10d9 894C2408 		movl	%ecx, 8(%esp)	# tmp90,
 1603 10dd DD1C24   		fstpl	(%esp)	#
 1604 10e0 E8F7F3FF 		call	trig_range_reduction	#
 1604      FF
 1605              	.LVL185:
 500:trigo_fast.c  ****   quadrant = (k>>7)&3;	/* Pi is divided in 4 quarters */	
 1606              		.loc 1 500 0
 1607 10e5 89C2     		movl	%eax, %edx	# k, tmp91
 1608 10e7 C1FA07   		sarl	$7, %edx	#, tmp91
 1609 10ea 83E203   		andl	$3, %edx	#, quadrant
 1610              	.LVL186:
 502:trigo_fast.c  ****   k=(k&127)<<2;
 1611              		.loc 1 502 0
 1612 10ed 83E07F   		andl	$127, %eax	#, D.2509
 1613              	.LVL187:
 1614 10f0 C1E002   		sall	$2, %eax	#, k.258
 1615              	.LVL188:
 504:trigo_fast.c  ****   switch (quadrant){
 1616              		.loc 1 504 0
 1617 10f3 83FA01   		cmpl	$1, %edx	#, quadrant
 1618 10f6 0F84A900 		je	.L54	#,
 1618      0000
 1619 10fc 83FA01   		cmpl	$1, %edx	#, quadrant
 1620 10ff 7F09     		jg	.L57	#,
 1621 1101 85D2     		testl	%edx, %edx	# quadrant
 1622 1103 7420     		je	.L53	#,
 1623              		.p2align 4,,6
 1624 1105 E9350200 		jmp	.L52	#
 1624      00
 1625              	.L57:
 1626 110a 83FA02   		cmpl	$2, %edx	#, quadrant
 1627 110d 8D7600   		.p2align 4,,6
 1628 1110 0F841701 		je	.L55	#,
 1628      0000
 1629 1116 83FA03   		cmpl	$3, %edx	#, quadrant
 1630              		.p2align 4,,5
 1631 1119 0F852002 		jne	.L52	#,
 1631      0000
 1632 111f 90       		.p2align 4,,5
 1633 1120 E9980100 		jmp	.L66	#
 1633      00
 1634              	.L53:
 509:trigo_fast.c  ****    if(k<=(64<<2)) {  /* sah <= cah */
 1635              		.loc 1 509 0
 1636 1125 3D000100 		cmpl	$256, %eax	#, k.258
 1636      00
 1637              		.p2align 4,,3
 1638 112a 7F39     		jg	.L58	#,
 510:trigo_fast.c  ****     sah=sincosTable[k].d; /* sin(a), high part */
 1639              		.loc 1 510 0
 1640 112c DD84C300 		fldl	sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
 1640      000000
 1641 1133 DD9B0000 		fstpl	sah@GOTOFF(%ebx)	# sah
 1641      0000
 511:trigo_fast.c  ****     sal=sincosTable[k+1].d; /* sin(a), low part */
 1642              		.loc 1 511 0
 1643 1139 DD84C308 		fldl	8+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
 1643      000000
 1644 1140 DD9B0800 		fstpl	sal@GOTOFF(%ebx)	# sal
 1644      0000
 512:trigo_fast.c  ****     cah=sincosTable[k+2].d; /* cos(a), high part */
 1645              		.loc 1 512 0
 1646 1146 DD84C310 		fldl	16+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
 1646      000000
 1647 114d DD9B1000 		fstpl	cah@GOTOFF(%ebx)	# cah
 1647      0000
 513:trigo_fast.c  ****     cal=sincosTable[k+3].d; /* cos(a), low part */
 1648              		.loc 1 513 0
 1649 1153 DD84C318 		fldl	24+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
 1649      000000
 1650 115a DD9B1800 		fstpl	cal@GOTOFF(%ebx)	# cal
 1650      0000
 1651 1160 E9FF0100 		jmp	.L59	#
 1651      00
 1652              	.L58:
 1653              	.LBB62:
 515:trigo_fast.c  ****     int k1=(128<<2) - k;
 1654              		.loc 1 515 0
 1655 1165 BA000200 		movl	$512, %edx	#, tmp107
 1655      00
 1656              	.LVL189:
 1657 116a 29C2     		subl	%eax, %edx	# k.258, tmp107
 1658              	.LVL190:
 516:trigo_fast.c  ****     cah=sincosTable[k1].d; 
 1659              		.loc 1 516 0
 1660 116c DD84D300 		fldl	sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
 1660      000000
 1661 1173 DD9B1000 		fstpl	cah@GOTOFF(%ebx)	# cah
 1661      0000
 517:trigo_fast.c  ****     cal=sincosTable[k1+1].d;
 1662              		.loc 1 517 0
 1663 1179 DD84D308 		fldl	8+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
 1663      000000
 1664 1180 DD9B1800 		fstpl	cal@GOTOFF(%ebx)	# cal
 1664      0000
 518:trigo_fast.c  ****     sah=sincosTable[k1+2].d;
 1665              		.loc 1 518 0
 1666 1186 DD84D310 		fldl	16+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
 1666      000000
 1667 118d DD9B0000 		fstpl	sah@GOTOFF(%ebx)	# sah
 1667      0000
 519:trigo_fast.c  ****     sal=sincosTable[k1+3].d;
 1668              		.loc 1 519 0
 1669 1193 DD84D318 		fldl	24+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
 1669      000000
 1670 119a DD9B0800 		fstpl	sal@GOTOFF(%ebx)	# sal
 1670      0000
 1671 11a0 E9BF0100 		jmp	.L59	#
 1671      00
 1672              	.LVL191:
 1673              	.L54:
 1674              	.LBE62:
 526:trigo_fast.c  ****      if(k<=(64<<2)) {  /* sah <= cah */
 1675              		.loc 1 526 0
 1676 11a5 3D000100 		cmpl	$256, %eax	#, k.258
 1676      00
 1677 11aa 7F3D     		jg	.L60	#,
 527:trigo_fast.c  ****     cah=-sincosTable[k].d; /* sin(a), high part */
 1678              		.loc 1 527 0
 1679 11ac DD84C300 		fldl	sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
 1679      000000
 1680 11b3 D9E0     		fchs
 1681 11b5 DD9B1000 		fstpl	cah@GOTOFF(%ebx)	# cah
 1681      0000
 528:trigo_fast.c  ****     cal=-sincosTable[k+1].d; /* sin(a), low part */
 1682              		.loc 1 528 0
 1683 11bb DD84C308 		fldl	8+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
 1683      000000
 1684 11c2 D9E0     		fchs
 1685 11c4 DD9B1800 		fstpl	cal@GOTOFF(%ebx)	# cal
 1685      0000
 529:trigo_fast.c  ****     sah=sincosTable[k+2].d; /* cos(a), high part */
 1686              		.loc 1 529 0
 1687 11ca DD84C310 		fldl	16+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
 1687      000000
 1688 11d1 DD9B0000 		fstpl	sah@GOTOFF(%ebx)	# sah
 1688      0000
 530:trigo_fast.c  ****     sal=sincosTable[k+3].d; /* cos(a), low part */
 1689              		.loc 1 530 0
 1690 11d7 DD84C318 		fldl	24+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
 1690      000000
 1691 11de DD9B0800 		fstpl	sal@GOTOFF(%ebx)	# sal
 1691      0000
 1692 11e4 E97B0100 		jmp	.L59	#
 1692      00
 1693              	.L60:
 1694              	.LBB63:
 532:trigo_fast.c  ****     int k1=(128<<2) - k;
 1695              		.loc 1 532 0
 1696 11e9 BA000200 		movl	$512, %edx	#, tmp140
 1696      00
 1697              	.LVL192:
 1698 11ee 29C2     		subl	%eax, %edx	# k.258, tmp140
 1699              	.LVL193:
 533:trigo_fast.c  ****     sah=sincosTable[k1].d; 
 1700              		.loc 1 533 0
 1701 11f0 DD84D300 		fldl	sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
 1701      000000
 1702 11f7 DD9B0000 		fstpl	sah@GOTOFF(%ebx)	# sah
 1702      0000
 534:trigo_fast.c  ****     sal=sincosTable[k1+1].d;
 1703              		.loc 1 534 0
 1704 11fd DD84D308 		fldl	8+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
 1704      000000
 1705 1204 DD9B0800 		fstpl	sal@GOTOFF(%ebx)	# sal
 1705      0000
 535:trigo_fast.c  ****     cah=-sincosTable[k1+2].d;
 1706              		.loc 1 535 0
 1707 120a DD84D310 		fldl	16+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
 1707      000000
 1708 1211 D9E0     		fchs
 1709 1213 DD9B1000 		fstpl	cah@GOTOFF(%ebx)	# cah
 1709      0000
 536:trigo_fast.c  ****     cal=-sincosTable[k1+3].d;
 1710              		.loc 1 536 0
 1711 1219 DD84D318 		fldl	24+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
 1711      000000
 1712 1220 D9E0     		fchs
 1713 1222 DD9B1800 		fstpl	cal@GOTOFF(%ebx)	# cal
 1713      0000
 1714 1228 E9370100 		jmp	.L59	#
 1714      00
 1715              	.LVL194:
 1716              	.L55:
 1717              	.LBE63:
 540:trigo_fast.c  ****       if(k<=(64<<2)) {  /* sah <= cah */
 1718              		.loc 1 540 0
 1719 122d 3D000100 		cmpl	$256, %eax	#, k.258
 1719      00
 1720 1232 7F41     		jg	.L61	#,
 541:trigo_fast.c  ****     sah=-sincosTable[k].d; /* sin(a), high part */
 1721              		.loc 1 541 0
 1722 1234 DD84C300 		fldl	sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
 1722      000000
 1723 123b D9E0     		fchs
 1724 123d DD9B0000 		fstpl	sah@GOTOFF(%ebx)	# sah
 1724      0000
 542:trigo_fast.c  ****     sal=-sincosTable[k+1].d; /* sin(a), low part */
 1725              		.loc 1 542 0
 1726 1243 DD84C308 		fldl	8+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
 1726      000000
 1727 124a D9E0     		fchs
 1728 124c DD9B0800 		fstpl	sal@GOTOFF(%ebx)	# sal
 1728      0000
 543:trigo_fast.c  ****     cah=-sincosTable[k+2].d; /* cos(a), high part */
 1729              		.loc 1 543 0
 1730 1252 DD84C310 		fldl	16+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
 1730      000000
 1731 1259 D9E0     		fchs
 1732 125b DD9B1000 		fstpl	cah@GOTOFF(%ebx)	# cah
 1732      0000
 544:trigo_fast.c  ****     cal=-sincosTable[k+3].d; /* cos(a), low part */
 1733              		.loc 1 544 0
 1734 1261 DD84C318 		fldl	24+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
 1734      000000
 1735 1268 D9E0     		fchs
 1736 126a DD9B1800 		fstpl	cal@GOTOFF(%ebx)	# cal
 1736      0000
 1737 1270 E9EF0000 		jmp	.L59	#
 1737      00
 1738              	.L61:
 1739              	.LBB64:
 546:trigo_fast.c  ****     int k1=(128<<2) - k;
 1740              		.loc 1 546 0
 1741 1275 BA000200 		movl	$512, %edx	#, tmp177
 1741      00
 1742              	.LVL195:
 1743 127a 29C2     		subl	%eax, %edx	# k.258, tmp177
 1744              	.LVL196:
 547:trigo_fast.c  ****     cah=-sincosTable[k1].d; 
 1745              		.loc 1 547 0
 1746 127c DD84D300 		fldl	sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
 1746      000000
 1747 1283 D9E0     		fchs
 1748 1285 DD9B1000 		fstpl	cah@GOTOFF(%ebx)	# cah
 1748      0000
 548:trigo_fast.c  ****     cal=-sincosTable[k1+1].d;
 1749              		.loc 1 548 0
 1750 128b DD84D308 		fldl	8+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
 1750      000000
 1751 1292 D9E0     		fchs
 1752 1294 DD9B1800 		fstpl	cal@GOTOFF(%ebx)	# cal
 1752      0000
 549:trigo_fast.c  ****     sah=-sincosTable[k1+2].d;
 1753              		.loc 1 549 0
 1754 129a DD84D310 		fldl	16+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
 1754      000000
 1755 12a1 D9E0     		fchs
 1756 12a3 DD9B0000 		fstpl	sah@GOTOFF(%ebx)	# sah
 1756      0000
 550:trigo_fast.c  ****     sal=-sincosTable[k1+3].d;
 1757              		.loc 1 550 0
 1758 12a9 DD84D318 		fldl	24+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
 1758      000000
 1759 12b0 D9E0     		fchs
 1760 12b2 DD9B0800 		fstpl	sal@GOTOFF(%ebx)	# sal
 1760      0000
 1761 12b8 E9A70000 		jmp	.L59	#
 1761      00
 1762              	.LVL197:
 1763              	.L66:
 1764              	.LBE64:
 554:trigo_fast.c  ****      if(k<=(64<<2)) {  /* sah <= cah */
 1765              		.loc 1 554 0
 1766 12bd 3D000100 		cmpl	$256, %eax	#, k.258
 1766      00
 1767 12c2 7F3A     		jg	.L62	#,
 555:trigo_fast.c  ****     cah=sincosTable[k].d ; /* sin(a), high part */
 1768              		.loc 1 555 0
 1769 12c4 DD84C300 		fldl	sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
 1769      000000
 1770 12cb DD9B1000 		fstpl	cah@GOTOFF(%ebx)	# cah
 1770      0000
 556:trigo_fast.c  ****     cal=sincosTable[k+1].d; /* sin(a), low part */
 1771              		.loc 1 556 0
 1772 12d1 DD84C308 		fldl	8+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
 1772      000000
 1773 12d8 DD9B1800 		fstpl	cal@GOTOFF(%ebx)	# cal
 1773      0000
 557:trigo_fast.c  ****     sah=-sincosTable[k+2].d; /* cos(a), high part */
 1774              		.loc 1 557 0
 1775 12de DD84C310 		fldl	16+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
 1775      000000
 1776 12e5 D9E0     		fchs
 1777 12e7 DD9B0000 		fstpl	sah@GOTOFF(%ebx)	# sah
 1777      0000
 558:trigo_fast.c  ****     sal=-sincosTable[k+3].d; /* cos(a), low part */
 1778              		.loc 1 558 0
 1779 12ed DD84C318 		fldl	24+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
 1779      000000
 1780 12f4 D9E0     		fchs
 1781 12f6 DD9B0800 		fstpl	sal@GOTOFF(%ebx)	# sal
 1781      0000
 1782 12fc EB66     		jmp	.L59	#
 1783              	.L62:
 1784              	.LBB65:
 560:trigo_fast.c  ****     int k1=(128<<2) - k;
 1785              		.loc 1 560 0
 1786 12fe BA000200 		movl	$512, %edx	#, tmp214
 1786      00
 1787              	.LVL198:
 1788 1303 29C2     		subl	%eax, %edx	# k.258, tmp214
 1789              	.LVL199:
 561:trigo_fast.c  ****     sah=-sincosTable[k1].d ; 
 1790              		.loc 1 561 0
 1791 1305 DD84D300 		fldl	sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
 1791      000000
 1792 130c D9E0     		fchs
 1793 130e DD9B0000 		fstpl	sah@GOTOFF(%ebx)	# sah
 1793      0000
 562:trigo_fast.c  ****     sal=-sincosTable[k1+1].d;
 1794              		.loc 1 562 0
 1795 1314 DD84D308 		fldl	8+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
 1795      000000
 1796 131b D9E0     		fchs
 1797 131d DD9B0800 		fstpl	sal@GOTOFF(%ebx)	# sal
 1797      0000
 563:trigo_fast.c  ****     cah=sincosTable[k1+2].d;
 1798              		.loc 1 563 0
 1799 1323 DD84D310 		fldl	16+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
 1799      000000
 1800 132a DD9B1000 		fstpl	cah@GOTOFF(%ebx)	# cah
 1800      0000
 564:trigo_fast.c  ****     cal=sincosTable[k1+3].d;
 1801              		.loc 1 564 0
 1802 1330 DD84D318 		fldl	24+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
 1802      000000
 1803 1337 DD9B1800 		fstpl	cal@GOTOFF(%ebx)	# cal
 1803      0000
 1804 133d EB25     		jmp	.L59	#
 1805              	.LVL200:
 1806              	.L52:
 1807              	.LBE65:
 568:trigo_fast.c  ****      fprintf(stderr,"ERREUR: %d is not a valid value in sn_tan \n", quadrant);
 1808              		.loc 1 568 0
 1809 133f 89542408 		movl	%edx, 8(%esp)	# quadrant,
 1810 1343 8D830000 		leal	.LC42@GOTOFF(%ebx), %eax	#, tmp232
 1810      0000
 1811              	.LVL201:
 1812 1349 89442404 		movl	%eax, 4(%esp)	# tmp232,
 1813 134d 8B830000 		movl	stderr@GOT(%ebx), %eax	#, tmp233
 1813      0000
 1814 1353 8B00     		movl	(%eax), %eax	# stderr, stderr
 1815 1355 890424   		movl	%eax, (%esp)	# stderr,
 1816 1358 E8FCFFFF 		call	fprintf@PLT	#
 1816      FF
 1817              	.LVL202:
 1818 135d D9EE     		fldz
 569:trigo_fast.c  ****      return 0.0;
 1819              		.loc 1 569 0
 1820 135f E9BC0100 		jmp	.L51	#
 1820      00
 1821              	.LVL203:
 1822              	.L59:
 576:trigo_fast.c  ****   do_sin(&sh, &sl, yh, yl);
 1823              		.loc 1 576 0
 1824 1364 8D55E8   		leal	-24(%ebp), %edx	#, tmp236
 1825 1367 8D45F0   		leal	-16(%ebp), %eax	#, tmp237
 1826              	.LVL204:
 1827 136a DD45C8   		fldl	-56(%ebp)	# yl
 1828 136d DD5C2408 		fstpl	8(%esp)	#
 1829              	.LVL205:
 1830 1371 DD45D0   		fldl	-48(%ebp)	# yh
 1831 1374 DD1C24   		fstpl	(%esp)	#
 1832 1377 E8EDECFF 		call	do_sin	#
 1832      FF
 577:trigo_fast.c  ****   do_cos(&ch, &cl, yh, yl);
 1833              		.loc 1 577 0
 1834 137c 8D55D8   		leal	-40(%ebp), %edx	#, tmp240
 1835 137f 8D45E0   		leal	-32(%ebp), %eax	#, tmp241
 1836 1382 DD45C8   		fldl	-56(%ebp)	# yl
 1837 1385 DD5C2408 		fstpl	8(%esp)	#
 1838 1389 DD45D0   		fldl	-48(%ebp)	# yh
 1839 138c DD1C24   		fstpl	(%esp)	#
 1840 138f E80EEFFF 		call	do_cos	#
 1840      FF
 1841              	.LVL206:
 1842              	.LBB66:
 580:trigo_fast.c  ****    Div22(&reshi, &reslo, sh, sl, ch, cl);
 1843              		.loc 1 580 0
 1844 1394 DD45F0   		fldl	-16(%ebp)	# sh
 1845              	.LVL207:
 1846 1397 DC75E0   		fdivl	-32(%ebp)	# ch
 1847 139a DD5DC0   		fstpl	-64(%ebp)	# %sfp
 1848              	.LVL208:
 1849              	.LBB67:
 1850 139d 8D830000 		leal	.LC1@GOTOFF(%ebx), %eax	#, tmp245
 1850      0000
 1851 13a3 890424   		movl	%eax, (%esp)	# tmp245,
 1852 13a6 E8FCFFFF 		call	puts@PLT	#
 1852      FF
 1853              	.LVL209:
 1854 13ab DD45E0   		fldl	-32(%ebp)	# ch
 1855 13ae DD5C241C 		fstpl	28(%esp)	#
 1856 13b2 DD45C0   		fldl	-64(%ebp)	# %sfp
 1857 13b5 DD5C2414 		fstpl	20(%esp)	#
 1858 13b9 D9EE     		fldz
 1859 13bb DD54240C 		fstl	12(%esp)	#
 1860 13bf DD5C2404 		fstpl	4(%esp)	#
 1861 13c3 8D830000 		leal	.LC2@GOTOFF(%ebx), %eax	#, tmp247
 1861      0000
 1862 13c9 890424   		movl	%eax, (%esp)	# tmp247,
 1863 13cc E8FCFFFF 		call	printf@PLT	#
 1863      FF
 1864              	.LVL210:
 1865 13d1 DD45E0   		fldl	-32(%ebp)	# ch
 1866 13d4 DD55B0   		fstl	-80(%ebp)	# %sfp
 1867              	.LVL211:
 1868 13d7 DD5C240C 		fstpl	12(%esp)	#
 1869 13db DD45C0   		fldl	-64(%ebp)	# %sfp
 1870 13de DD5C2404 		fstpl	4(%esp)	#
 1871 13e2 8D830000 		leal	.LC3@GOTOFF(%ebx), %eax	#, tmp248
 1871      0000
 1872 13e8 890424   		movl	%eax, (%esp)	# tmp248,
 1873 13eb E8FCFFFF 		call	printf@PLT	#
 1873      FF
 1874              	.LVL212:
 1875 13f0 DD830000 		fldl	.LC4@GOTOFF(%ebx)	#
 1875      0000
 1876 13f6 DD45C0   		fldl	-64(%ebp)	# %sfp
 1877 13f9 D8C9     		fmul	%st(1), %st	#,
 1878 13fb DD55A0   		fstl	-96(%ebp)	# %sfp
 1879 13fe D9C9     		fxch	%st(1)	#
 1880              	.LVL213:
 1881 1400 DC4DB0   		fmull	-80(%ebp)	# %sfp
 1882 1403 DD55A8   		fstl	-88(%ebp)	# %sfp
 1883              	.LVL214:
 1884 1406 DD5C240C 		fstpl	12(%esp)	#
 1885 140a DD5C2404 		fstpl	4(%esp)	#
 1886 140e 8D830000 		leal	.LC5@GOTOFF(%ebx), %eax	#, tmp251
 1886      0000
 1887 1414 890424   		movl	%eax, (%esp)	# tmp251,
 1888 1417 E8FCFFFF 		call	printf@PLT	#
 1888      FF
 1889              	.LVL215:
 1890 141c DD45C0   		fldl	-64(%ebp)	# %sfp
 1891 141f DC65A0   		fsubl	-96(%ebp)	# %sfp
 1892 1422 DC45A0   		faddl	-96(%ebp)	# %sfp
 1893 1425 DD5D90   		fstpl	-112(%ebp)	# %sfp
 1894              	.LVL216:
 1895 1428 DD45B0   		fldl	-80(%ebp)	# %sfp
 1896              	.LVL217:
 1897 142b DC65A8   		fsubl	-88(%ebp)	# %sfp
 1898 142e DC45A8   		faddl	-88(%ebp)	# %sfp
 1899 1431 DD5D98   		fstpl	-104(%ebp)	# %sfp
 1900              	.LVL218:
 1901 1434 DD45A8   		fldl	-88(%ebp)	# %sfp
 1902              	.LVL219:
 1903 1437 DD5C240C 		fstpl	12(%esp)	#
 1904 143b DD45A0   		fldl	-96(%ebp)	# %sfp
 1905 143e DD5C2404 		fstpl	4(%esp)	#
 1906 1442 8D830000 		leal	.LC6@GOTOFF(%ebx), %eax	#, tmp254
 1906      0000
 1907 1448 890424   		movl	%eax, (%esp)	# tmp254,
 1908 144b E8FCFFFF 		call	printf@PLT	#
 1908      FF
 1909 1450 DD45C0   		fldl	-64(%ebp)	# %sfp
 1910 1453 DC6590   		fsubl	-112(%ebp)	# %sfp
 1911 1456 DD5D80   		fstpl	-128(%ebp)	# %sfp
 1912              	.LVL220:
 1913 1459 DD45B0   		fldl	-80(%ebp)	# %sfp
 1914              	.LVL221:
 1915 145c DC6598   		fsubl	-104(%ebp)	# %sfp
 1916 145f DD5D88   		fstpl	-120(%ebp)	# %sfp
 1917              	.LVL222:
 1918 1462 DD45A8   		fldl	-88(%ebp)	# %sfp
 1919              	.LVL223:
 1920 1465 DD5C240C 		fstpl	12(%esp)	#
 1921 1469 DD45A0   		fldl	-96(%ebp)	# %sfp
 1922 146c DD5C2404 		fstpl	4(%esp)	#
 1923 1470 8D830000 		leal	.LC7@GOTOFF(%ebx), %eax	#, tmp255
 1923      0000
 1924 1476 890424   		movl	%eax, (%esp)	# tmp255,
 1925 1479 E8FCFFFF 		call	printf@PLT	#
 1925      FF
 1926 147e DD45C0   		fldl	-64(%ebp)	# %sfp
 1927 1481 DC4DB0   		fmull	-80(%ebp)	# %sfp
 1928 1484 DD55B0   		fstl	-80(%ebp)	# %sfp
 1929              	.LVL224:
 1930 1487 DD4590   		fldl	-112(%ebp)	# %sfp
 1931              	.LVL225:
 1932 148a DC4D98   		fmull	-104(%ebp)	# %sfp
 1933 148d DEE1     		fsubp	%st, %st(1)	#,
 1934 148f DD4590   		fldl	-112(%ebp)	# %sfp
 1935 1492 DC4D88   		fmull	-120(%ebp)	# %sfp
 1936 1495 DEC1     		faddp	%st, %st(1)	#,
 1937 1497 DD4580   		fldl	-128(%ebp)	# %sfp
 1938 149a DC4D98   		fmull	-104(%ebp)	# %sfp
 1939 149d DEC1     		faddp	%st, %st(1)	#,
 1940 149f DD4580   		fldl	-128(%ebp)	# %sfp
 1941 14a2 DC4D88   		fmull	-120(%ebp)	# %sfp
 1942 14a5 DEC1     		faddp	%st, %st(1)	#,
 1943 14a7 DD55A8   		fstl	-88(%ebp)	# %sfp
 1944              	.LVL226:
 1945 14aa DD5C240C 		fstpl	12(%esp)	#
 1946 14ae DD45B0   		fldl	-80(%ebp)	# %sfp
 1947              	.LVL227:
 1948 14b1 DD5C2404 		fstpl	4(%esp)	#
 1949 14b5 8D830000 		leal	.LC8@GOTOFF(%ebx), %eax	#, tmp263
 1949      0000
 1950 14bb 890424   		movl	%eax, (%esp)	# tmp263,
 1951 14be E8FCFFFF 		call	printf@PLT	#
 1951      FF
 1952 14c3 DD45A8   		fldl	-88(%ebp)	# %sfp
 1953 14c6 DD5C2404 		fstpl	4(%esp)	#
 1954 14ca 8D830000 		leal	.LC9@GOTOFF(%ebx), %eax	#, tmp264
 1954      0000
 1955 14d0 890424   		movl	%eax, (%esp)	# tmp264,
 1956 14d3 E8FCFFFF 		call	printf@PLT	#
 1956      FF
 1957              	.LBE67:
 1958 14d8 DD45B0   		fldl	-80(%ebp)	# %sfp
 1959 14db DC6DF0   		fsubrl	-16(%ebp)	# sh
 1960 14de DC65A8   		fsubl	-88(%ebp)	# %sfp
 1961              	.LVL228:
 1962 14e1 DC45E8   		faddl	-24(%ebp)	# sl
 1963 14e4 DD45C0   		fldl	-64(%ebp)	# %sfp
 1964              	.LVL229:
 1965 14e7 DC4DD8   		fmull	-40(%ebp)	# cl
 1966 14ea DEE9     		fsubrp	%st, %st(1)	#,
 1967 14ec DC75E0   		fdivl	-32(%ebp)	# ch
 1968              	.LVL230:
 1969 14ef DD45C0   		fldl	-64(%ebp)	# %sfp
 1970              	.LVL231:
 1971 14f2 D8C1     		fadd	%st(1), %st	#,
 1972              	.LVL232:
 1973 14f4 DD45C0   		fldl	-64(%ebp)	# %sfp
 1974              	.LVL233:
 1975 14f7 D8E1     		fsub	%st(1), %st	#,
 1976 14f9 DEC2     		faddp	%st, %st(2)	#,
 1977 14fb D9C9     		fxch	%st(1)	#
 1978              	.LBE66:
 584:trigo_fast.c  ****   if(reshi == (reshi + (reslo * 1.0004))){
 1979              		.loc 1 584 0
 1980 14fd DC8B0000 		fmull	.LC43@GOTOFF(%ebx)	#
 1980      0000
 1981 1503 D8C1     		fadd	%st(1), %st	#,
 1982 1505 D9C9     		fxch	%st(1)	#
 1983 1507 DBE9     		fucomi	%st(1), %st	#,
 1984 1509 DDD9     		fstp	%st(1)	#
 1985 150b 7A06     		jp	.L67	#,
 1986 150d 7411     		je	.L51	#,
 1987 150f DDD8     		fstp	%st(0)	#
 1988 1511 EB02     		jmp	.L65	#
 1989              	.L67:
 1990 1513 DDD8     		fstp	%st(0)	#
 1991              	.L65:
 587:trigo_fast.c  ****     return scs_tan_rn(x); 
 1992              		.loc 1 587 0
 1993 1515 DD45B8   		fldl	-72(%ebp)	# %sfp
 1994 1518 DD1C24   		fstpl	(%esp)	#
 1995 151b E8FCFFFF 		call	scs_tan_rn@PLT	#
 1995      FF
 1996              	.LVL234:
 1997              	.L51:
 590:trigo_fast.c  **** }
 1998              		.loc 1 590 0
 1999 1520 81C4B000 		addl	$176, %esp	#,
 1999      0000
 2000 1526 5B       		popl	%ebx	#
 2001              		.cfi_restore 3
 2002 1527 5E       		popl	%esi	#
 2003              		.cfi_restore 6
 2004 1528 5D       		popl	%ebp	#
 2005              		.cfi_restore 5
 2006              		.cfi_def_cfa 4, 4
 2007 1529 C3       		ret
 2008              		.cfi_endproc
 2009              	.LFE18:
 2011              		.section	.rodata.str1.1
 2012              	.LC45:
 2013 011c 4A555354 		.string	"JUST BEFORE RANGEREDUCE!"
 2013      20424546 
 2013      4F524520 
 2013      52414E47 
 2013      45524544 
 2014              	.LC46:
 2015 0135 79683D25 		.string	"yh=%.20e, yl=%.20e\n"
 2015      2E323065 
 2015      2C20796C 
 2015      3D252E32 
 2015      30650A00 
 2016              	.LC47:
 2017 0149 4A555354 		.string	"JUST AFTER RANGEREDUCE!"
 2017      20414654 
 2017      45522052 
 2017      414E4745 
 2017      52454455 
 2018              		.text
 2019              	.globl cos_rn
 2021              	cos_rn:
 2022              	.LFB14:
 360:trigo_fast.c  **** double cos_rn(double x){ 
 2023              		.loc 1 360 0
 2024              		.cfi_startproc
 2025              	.LVL235:
 2026 152a 55       		pushl	%ebp	#
 2027              		.cfi_def_cfa_offset 8
 2028              		.cfi_offset 5, -8
 2029 152b 89E5     		movl	%esp, %ebp	#,
 2030              		.cfi_def_cfa_register 5
 2031 152d 83EC78   		subl	$120, %esp	#,
 2032 1530 895DF4   		movl	%ebx, -12(%ebp)	#,
 2033 1533 8975F8   		movl	%esi, -8(%ebp)	#,
 2034 1536 897DFC   		movl	%edi, -4(%ebp)	#,
 2035              		.cfi_offset 7, -12
 2036              		.cfi_offset 6, -16
 2037              		.cfi_offset 3, -20
 2038 1539 E8FCFFFF 		call	__i686.get_pc_thunk.bx	#
 2038      FF
 2039 153e 81C30200 		addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
 2039      0000
 2040 1544 DD4508   		fldl	8(%ebp)	# x
 2041 1547 DD55C0   		fstl	-64(%ebp)	# %sfp
 371:trigo_fast.c  ****   xx.d=x;
 2042              		.loc 1 371 0
 2043 154a DD5DB8   		fstpl	-72(%ebp)	# %sfp
 372:trigo_fast.c  ****   absxhi = xx.i[HI_ENDIAN] & 0x7fffffff;
 2044              		.loc 1 372 0
 2045 154d 8B75BC   		movl	-68(%ebp), %esi	# %sfp, absxhi
 2046 1550 81E6FFFF 		andl	$2147483647, %esi	#, absxhi
 2046      FF7F
 2047              	.LVL236:
 374:trigo_fast.c  ****   if (absxhi < XMAX_COS_FAST){
 2048              		.loc 1 374 0
 2049 1556 81FEFFFF 		cmpl	$1067450367, %esi	#, absxhi
 2049      9F3F
 2050 155c 7F6F     		jg	.L69	#,
 375:trigo_fast.c  ****     if (absxhi <XMAX_RETURN_1_FOR_COS)
 2051              		.loc 1 375 0
 2052 155e 81FEFFFF 		cmpl	$1044381695, %esi	#, absxhi
 2052      3F3E
 2053 1564 7F07     		jg	.L70	#,
 2054 1566 D9E8     		fld1
 2055 1568 E9230200 		jmp	.L71	#
 2055      00
 2056              	.L70:
 378:trigo_fast.c  ****     yh=x*x;
 2057              		.loc 1 378 0
 2058 156d DD45C0   		fldl	-64(%ebp)	# %sfp
 2059 1570 D8C8     		fmul	%st(0), %st	#,
 379:trigo_fast.c  ****     tc = yh * (c2.d + yh*(c4.d + yh*(c6.d + yh*(c8.d))));
 2060              		.loc 1 379 0
 2061 1572 D9C0     		fld	%st(0)	#
 2062 1574 DC8B5008 		fmull	c8@GOTOFF(%ebx)	# c8.d
 2062      0000
 2063 157a DC834808 		faddl	c6@GOTOFF(%ebx)	# c6.d
 2063      0000
 2064 1580 D8C9     		fmul	%st(1), %st	#,
 2065 1582 DC834008 		faddl	c4@GOTOFF(%ebx)	# c4.d
 2065      0000
 2066 1588 D8C9     		fmul	%st(1), %st	#,
 2067 158a DC833808 		faddl	c2@GOTOFF(%ebx)	# c2.d
 2067      0000
 2068 1590 D8C9     		fmul	%st(1), %st	#,
 2069              	.LVL237:
 2070              	.LBB70:
 380:trigo_fast.c  ****     Add12(ch,cl, 1, tc);
 2071              		.loc 1 380 0
 2072 1592 D9E8     		fld1
 2073              	.LVL238:
 2074 1594 D9C1     		fld	%st(1)	#
 2075 1596 D8C1     		fadd	%st(1), %st	#,
 2076              	.LVL239:
 2077 1598 DCE1     		fsub	%st, %st(1)	#,
 2078 159a D9CA     		fxch	%st(2)	#
 2079              	.LVL240:
 2080 159c DEE1     		fsubp	%st, %st(1)	#,
 2081 159e DD55D8   		fstl	-40(%ebp)	# cl
 2082              	.LVL241:
 2083              	.LBE70:
 381:trigo_fast.c  ****     if(ch == (ch + (cl * RN_CST_COSFAST))){	
 2084              		.loc 1 381 0
 2085 15a1 DC8B0000 		fmull	.LC44@GOTOFF(%ebx)	#
 2085      0000
 2086 15a7 D8C1     		fadd	%st(1), %st	#,
 2087 15a9 D9C9     		fxch	%st(1)	#
 2088 15ab DBE9     		fucomi	%st(1), %st	#,
 2089 15ad DDD9     		fstp	%st(1)	#
 2090 15af 7A06     		jp	.L80	#,
 2091 15b1 0F84D701 		je	.L82	#,
 2091      0000
 2092              	.L80:
 2093              	.LBB71:
 380:trigo_fast.c  ****     Add12(ch,cl, 1, tc);
 2094              		.loc 1 380 0
 2095 15b7 DD5DE0   		fstpl	-32(%ebp)	# ch
 2096              	.LVL242:
 2097              	.LBE71:
 378:trigo_fast.c  ****     yh=x*x;
 2098              		.loc 1 378 0
 2099 15ba DD5DD0   		fstpl	-48(%ebp)	# yh
 2100              	.LVL243:
 384:trigo_fast.c  ****       return scs_cos_rn(x); 
 2101              		.loc 1 384 0
 2102 15bd DD45C0   		fldl	-64(%ebp)	# %sfp
 2103 15c0 DD1C24   		fstpl	(%esp)	#
 2104 15c3 E8FCFFFF 		call	scs_cos_rn@PLT	#
 2104      FF
 2105 15c8 E9C30100 		jmp	.L71	#
 2105      00
 2106              	.LVL244:
 2107              	.L69:
 389:trigo_fast.c  ****   printf ("JUST BEFORE RANGEREDUCE!\n");
 2108              		.loc 1 389 0
 2109 15cd 8D830000 		leal	.LC45@GOTOFF(%ebx), %eax	#, tmp92
 2109      0000
 2110 15d3 890424   		movl	%eax, (%esp)	# tmp92,
 2111 15d6 E8FCFFFF 		call	puts@PLT	#
 2111      FF
 390:trigo_fast.c  ****   printf ("x=%.20e absxhi=%i\n", x,absxhi);
 2112              		.loc 1 390 0
 2113 15db 8DBB0000 		leal	.LC12@GOTOFF(%ebx), %edi	#, D.2405
 2113      0000
 2114 15e1 8974240C 		movl	%esi, 12(%esp)	# absxhi,
 2115 15e5 DD45C0   		fldl	-64(%ebp)	# %sfp
 2116 15e8 DD5C2404 		fstpl	4(%esp)	#
 2117 15ec 893C24   		movl	%edi, (%esp)	# D.2405,
 2118 15ef E8FCFFFF 		call	printf@PLT	#
 2118      FF
 392:trigo_fast.c  ****   printf ("yh=%.20e, yl=%.20e\n", yh,yl);
 2119              		.loc 1 392 0
 2120 15f4 8D830000 		leal	.LC46@GOTOFF(%ebx), %eax	#,
 2120      0000
 2121 15fa 8945B4   		movl	%eax, -76(%ebp)	#, %sfp
 2122              	.LVL245:
 2123 15fd DD45C8   		fldl	-56(%ebp)	# yl
 2124 1600 DD5C240C 		fstpl	12(%esp)	#
 2125              	.LVL246:
 2126 1604 DD45D0   		fldl	-48(%ebp)	# yh
 2127 1607 DD5C2404 		fstpl	4(%esp)	#
 2128 160b 890424   		movl	%eax, (%esp)	#,
 2129 160e E8FCFFFF 		call	printf@PLT	#
 2129      FF
 393:trigo_fast.c  ****   printf ("\n");
 2130              		.loc 1 393 0
 2131 1613 C704240A 		movl	$10, (%esp)	#,
 2131      000000
 2132 161a E8FCFFFF 		call	putchar@PLT	#
 2132      FF
 395:trigo_fast.c  ****   k=trig_range_reduction(&yh, &yl,  x, absxhi, &scs_cos_rn);
 2133              		.loc 1 395 0
 2134 161f 8D55C8   		leal	-56(%ebp), %edx	#, tmp95
 2135 1622 8D45D0   		leal	-48(%ebp), %eax	#, tmp96
 2136 1625 8B8B0000 		movl	scs_cos_rn@GOT(%ebx), %ecx	#, tmp98
 2136      0000
 2137 162b 894C240C 		movl	%ecx, 12(%esp)	# tmp98,
 2138 162f 89742408 		movl	%esi, 8(%esp)	# absxhi,
 2139 1633 DD45C0   		fldl	-64(%ebp)	# %sfp
 2140 1636 DD1C24   		fstpl	(%esp)	#
 2141 1639 E89EEEFF 		call	trig_range_reduction	#
 2141      FF
 2142 163e 8945B8   		movl	%eax, -72(%ebp)	#, %sfp
 2143              	.LVL247:
 397:trigo_fast.c  ****   printf ("JUST AFTER RANGEREDUCE!\n");  
 2144              		.loc 1 397 0
 2145 1641 8D830000 		leal	.LC47@GOTOFF(%ebx), %eax	#, tmp99
 2145      0000
 2146              	.LVL248:
 2147 1647 890424   		movl	%eax, (%esp)	# tmp99,
 2148 164a E8FCFFFF 		call	puts@PLT	#
 2148      FF
 398:trigo_fast.c  ****   printf ("x=%.20e absxhi=%i\n", x,absxhi);
 2149              		.loc 1 398 0
 2150 164f 8974240C 		movl	%esi, 12(%esp)	# absxhi,
 2151 1653 DD45C0   		fldl	-64(%ebp)	# %sfp
 2152 1656 DD5C2404 		fstpl	4(%esp)	#
 2153 165a 893C24   		movl	%edi, (%esp)	# D.2405,
 2154 165d E8FCFFFF 		call	printf@PLT	#
 2154      FF
 399:trigo_fast.c  ****   printf ("yh=%.20e, yl=%.20e\n", yh,yl);
 2155              		.loc 1 399 0
 2156 1662 DD45C8   		fldl	-56(%ebp)	# yl
 2157 1665 DD5C240C 		fstpl	12(%esp)	#
 2158 1669 DD45D0   		fldl	-48(%ebp)	# yh
 2159 166c DD5C2404 		fstpl	4(%esp)	#
 2160 1670 8B45B4   		movl	-76(%ebp), %eax	# %sfp,
 2161 1673 890424   		movl	%eax, (%esp)	#,
 2162 1676 E8FCFFFF 		call	printf@PLT	#
 2162      FF
 400:trigo_fast.c  ****   printf ("\n");
 2163              		.loc 1 400 0
 2164 167b C704240A 		movl	$10, (%esp)	#,
 2164      000000
 2165 1682 E8FCFFFF 		call	putchar@PLT	#
 2165      FF
 405:trigo_fast.c  ****   quadrant = (k>>7)&3;
 2166              		.loc 1 405 0
 2167 1687 8B75B8   		movl	-72(%ebp), %esi	# %sfp, tmp102
 2168              	.LVL249:
 2169 168a C1FE07   		sarl	$7, %esi	#, tmp102
 2170 168d 83E603   		andl	$3, %esi	#, quadrant
 2171              	.LVL250:
 406:trigo_fast.c  ****   k=(k&127)<<2;
 2172              		.loc 1 406 0
 2173 1690 8B45B8   		movl	-72(%ebp), %eax	# %sfp, D.2410
 2174 1693 83E07F   		andl	$127, %eax	#, D.2410
 2175 1696 C1E002   		sall	$2, %eax	#, k.304
 2176              	.LVL251:
 408:trigo_fast.c  ****   if(k<=(64<<2)) {
 2177              		.loc 1 408 0
 2178 1699 3D000100 		cmpl	$256, %eax	#, k.304
 2178      00
 2179 169e 7F36     		jg	.L72	#,
 409:trigo_fast.c  ****     sah=sincosTable[k+0].d; /* sin(a), high part */
 2180              		.loc 1 409 0
 2181 16a0 DD84C300 		fldl	sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
 2181      000000
 2182 16a7 DD9B0000 		fstpl	sah@GOTOFF(%ebx)	# sah
 2182      0000
 410:trigo_fast.c  ****     sal=sincosTable[k+1].d; /* sin(a), low part */
 2183              		.loc 1 410 0
 2184 16ad DD84C308 		fldl	8+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
 2184      000000
 2185 16b4 DD9B0800 		fstpl	sal@GOTOFF(%ebx)	# sal
 2185      0000
 411:trigo_fast.c  ****     cah=sincosTable[k+2].d; /* cos(a), high part */
 2186              		.loc 1 411 0
 2187 16ba DD84C310 		fldl	16+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
 2187      000000
 2188 16c1 DD9B1000 		fstpl	cah@GOTOFF(%ebx)	# cah
 2188      0000
 412:trigo_fast.c  ****     cal=sincosTable[k+3].d; /* cos(a), low part */
 2189              		.loc 1 412 0
 2190 16c7 DD84C318 		fldl	24+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
 2190      000000
 2191 16ce DD9B1800 		fstpl	cal@GOTOFF(%ebx)	# cal
 2191      0000
 2192 16d4 EB3B     		jmp	.L73	#
 2193              	.L72:
 2194              	.LBB72:
 414:trigo_fast.c  ****     int k1=(128<<2) - k;
 2195              		.loc 1 414 0
 2196 16d6 BA000200 		movl	$512, %edx	#, tmp118
 2196      00
 2197 16db 29C2     		subl	%eax, %edx	# k.304, tmp118
 2198              	.LVL252:
 415:trigo_fast.c  ****     cah=sincosTable[k1+0].d; /* cos(a), high part */
 2199              		.loc 1 415 0
 2200 16dd DD84D300 		fldl	sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
 2200      000000
 2201 16e4 DD9B1000 		fstpl	cah@GOTOFF(%ebx)	# cah
 2201      0000
 416:trigo_fast.c  ****     cal=sincosTable[k1+1].d; /* cos(a), low part  */ 
 2202              		.loc 1 416 0
 2203 16ea DD84D308 		fldl	8+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
 2203      000000
 2204 16f1 DD9B1800 		fstpl	cal@GOTOFF(%ebx)	# cal
 2204      0000
 417:trigo_fast.c  ****     sah=sincosTable[k1+2].d; /* sin(a), high part */
 2205              		.loc 1 417 0
 2206 16f7 DD84D310 		fldl	16+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
 2206      000000
 2207 16fe DD9B0000 		fstpl	sah@GOTOFF(%ebx)	# sah
 2207      0000
 418:trigo_fast.c  ****     sal=sincosTable[k1+3].d; /* sin(a), low part  */
 2208              		.loc 1 418 0
 2209 1704 DD84D318 		fldl	24+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
 2209      000000
 2210 170b DD9B0800 		fstpl	sal@GOTOFF(%ebx)	# sal
 2210      0000
 2211              	.LVL253:
 2212              	.L73:
 2213              	.LBE72:
 430:trigo_fast.c  ****   if (quadrant&1)   /*compute the cos  */
 2214              		.loc 1 430 0
 2215 1711 F7C60100 		testl	$1, %esi	#, quadrant
 2215      0000
 2216 1717 741A     		je	.L74	#,
 431:trigo_fast.c  ****     do_sin(&ch, &cl,  yh,yl);
 2217              		.loc 1 431 0
 2218 1719 8D55D8   		leal	-40(%ebp), %edx	#, tmp135
 2219 171c 8D45E0   		leal	-32(%ebp), %eax	#, tmp136
 2220              	.LVL254:
 2221 171f DD45C8   		fldl	-56(%ebp)	# yl
 2222 1722 DD5C2408 		fstpl	8(%esp)	#
 2223 1726 DD45D0   		fldl	-48(%ebp)	# yh
 2224 1729 DD1C24   		fstpl	(%esp)	#
 2225 172c E838E9FF 		call	do_sin	#
 2225      FF
 2226 1731 EB18     		jmp	.L75	#
 2227              	.LVL255:
 2228              	.L74:
 433:trigo_fast.c  ****     do_cos(&ch, &cl,  yh,yl);
 2229              		.loc 1 433 0
 2230 1733 8D55D8   		leal	-40(%ebp), %edx	#, tmp139
 2231 1736 8D45E0   		leal	-32(%ebp), %eax	#, tmp140
 2232              	.LVL256:
 2233 1739 DD45C8   		fldl	-56(%ebp)	# yl
 2234 173c DD5C2408 		fstpl	8(%esp)	#
 2235 1740 DD45D0   		fldl	-48(%ebp)	# yh
 2236 1743 DD1C24   		fstpl	(%esp)	#
 2237 1746 E857EBFF 		call	do_cos	#
 2237      FF
 2238              	.L75:
 436:trigo_fast.c  ****   if((quadrant == 1)||(quadrant == 2)) { 
 2239              		.loc 1 436 0
 2240 174b 83EE01   		subl	$1, %esi	#, tmp143
 2241              	.LVL257:
 2242 174e 83FE01   		cmpl	$1, %esi	#, tmp143
 2243 1751 7710     		ja	.L76	#,
 2244              	.LVL258:
 437:trigo_fast.c  ****     ch = -ch;
 2245              		.loc 1 437 0
 2246 1753 DD45E0   		fldl	-32(%ebp)	# ch
 2247 1756 D9E0     		fchs
 2248 1758 DD5DE0   		fstpl	-32(%ebp)	# ch
 2249              	.LVL259:
 438:trigo_fast.c  ****     cl = -cl;
 2250              		.loc 1 438 0
 2251 175b DD45D8   		fldl	-40(%ebp)	# cl
 2252 175e D9E0     		fchs
 2253 1760 DD5DD8   		fstpl	-40(%ebp)	# cl
 2254              	.L76:
 441:trigo_fast.c  ****   if(ch == (ch + (cl * 1.0004))){	
 2255              		.loc 1 441 0
 2256 1763 DD45E0   		fldl	-32(%ebp)	# ch
 2257 1766 DD830000 		fldl	.LC43@GOTOFF(%ebx)	#
 2257      0000
 2258 176c DC4DD8   		fmull	-40(%ebp)	# cl
 2259 176f D8C1     		fadd	%st(1), %st	#,
 2260 1771 D9C9     		fxch	%st(1)	#
 2261 1773 DBE9     		fucomi	%st(1), %st	#,
 2262 1775 DDD9     		fstp	%st(1)	#
 2263 1777 7A06     		jp	.L83	#,
 2264 1779 7415     		je	.L71	#,
 2265 177b DDD8     		fstp	%st(0)	#
 2266 177d EB02     		jmp	.L81	#
 2267              	.L83:
 2268 177f DDD8     		fstp	%st(0)	#
 2269              	.L81:
 444:trigo_fast.c  ****     return scs_cos_rn(x); 
 2270              		.loc 1 444 0
 2271 1781 DD45C0   		fldl	-64(%ebp)	# %sfp
 2272 1784 DD1C24   		fstpl	(%esp)	#
 2273 1787 E8FCFFFF 		call	scs_cos_rn@PLT	#
 2273      FF
 2274 178c EB02     		jmp	.L71	#
 2275              	.LVL260:
 2276              	.L82:
 2277 178e DDD9     		fstp	%st(1)	#
 2278              	.LVL261:
 2279              	.L71:
 447:trigo_fast.c  **** }
 2280              		.loc 1 447 0
 2281 1790 8B5DF4   		movl	-12(%ebp), %ebx	#,
 2282 1793 8B75F8   		movl	-8(%ebp), %esi	#,
 2283 1796 8B7DFC   		movl	-4(%ebp), %edi	#,
 2284 1799 89EC     		movl	%ebp, %esp	#,
 2285              		.cfi_def_cfa_register 4
 2286              		.cfi_restore 7
 2287              		.cfi_restore 6
 2288              		.cfi_restore 3
 2289 179b 5D       		popl	%ebp	#
 2290              		.cfi_restore 5
 2291              		.cfi_def_cfa_offset 4
 2292 179c C3       		ret
 2293              		.cfi_endproc
 2294              	.LFE14:
 2296              	.globl cos_rz
 2298              	cos_rz:
 2299              	.LFB17:
 461:trigo_fast.c  **** double cos_rz(double x){ 
 2300              		.loc 1 461 0
 2301              		.cfi_startproc
 2302              	.LVL262:
 2303 179d 55       		pushl	%ebp	#
 2304              		.cfi_def_cfa_offset 8
 2305              		.cfi_offset 5, -8
 2306 179e 89E5     		movl	%esp, %ebp	#,
 2307              		.cfi_def_cfa_register 5
 2308 17a0 53       		pushl	%ebx	#
 2309 17a1 83EC14   		subl	$20, %esp	#,
 2310              		.cfi_offset 3, -12
 2311 17a4 E8FCFFFF 		call	__i686.get_pc_thunk.bx	#
 2311      FF
 2312 17a9 81C30200 		addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
 2312      0000
 462:trigo_fast.c  **** return scs_cos_rz(x);
 2313              		.loc 1 462 0
 2314 17af DD4508   		fldl	8(%ebp)	# x
 2315 17b2 DD1C24   		fstpl	(%esp)	#
 2316 17b5 E8FCFFFF 		call	scs_cos_rz@PLT	#
 2316      FF
 463:trigo_fast.c  **** }
 2317              		.loc 1 463 0
 2318 17ba 83C414   		addl	$20, %esp	#,
 2319 17bd 5B       		popl	%ebx	#
 2320              		.cfi_restore 3
 2321 17be 5D       		popl	%ebp	#
 2322              		.cfi_restore 5
 2323              		.cfi_def_cfa 4, 4
 2324 17bf C3       		ret
 2325              		.cfi_endproc
 2326              	.LFE17:
 2328              	.globl cos_ru
 2330              	cos_ru:
 2331              	.LFB16:
 456:trigo_fast.c  **** double cos_ru(double x){ 
 2332              		.loc 1 456 0
 2333              		.cfi_startproc
 2334              	.LVL263:
 2335 17c0 55       		pushl	%ebp	#
 2336              		.cfi_def_cfa_offset 8
 2337              		.cfi_offset 5, -8
 2338 17c1 89E5     		movl	%esp, %ebp	#,
 2339              		.cfi_def_cfa_register 5
 2340 17c3 53       		pushl	%ebx	#
 2341 17c4 83EC14   		subl	$20, %esp	#,
 2342              		.cfi_offset 3, -12
 2343 17c7 E8FCFFFF 		call	__i686.get_pc_thunk.bx	#
 2343      FF
 2344 17cc 81C30200 		addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
 2344      0000
 457:trigo_fast.c  **** return scs_cos_ru(x);
 2345              		.loc 1 457 0
 2346 17d2 DD4508   		fldl	8(%ebp)	# x
 2347 17d5 DD1C24   		fstpl	(%esp)	#
 2348 17d8 E8FCFFFF 		call	scs_cos_ru@PLT	#
 2348      FF
 458:trigo_fast.c  **** }
 2349              		.loc 1 458 0
 2350 17dd 83C414   		addl	$20, %esp	#,
 2351 17e0 5B       		popl	%ebx	#
 2352              		.cfi_restore 3
 2353 17e1 5D       		popl	%ebp	#
 2354              		.cfi_restore 5
 2355              		.cfi_def_cfa 4, 4
 2356 17e2 C3       		ret
 2357              		.cfi_endproc
 2358              	.LFE16:
 2360              	.globl cos_rd
 2362              	cos_rd:
 2363              	.LFB15:
 451:trigo_fast.c  **** double cos_rd(double x){
 2364              		.loc 1 451 0
 2365              		.cfi_startproc
 2366              	.LVL264:
 2367 17e3 55       		pushl	%ebp	#
 2368              		.cfi_def_cfa_offset 8
 2369              		.cfi_offset 5, -8
 2370 17e4 89E5     		movl	%esp, %ebp	#,
 2371              		.cfi_def_cfa_register 5
 2372 17e6 53       		pushl	%ebx	#
 2373 17e7 83EC14   		subl	$20, %esp	#,
 2374              		.cfi_offset 3, -12
 2375 17ea E8FCFFFF 		call	__i686.get_pc_thunk.bx	#
 2375      FF
 2376 17ef 81C30200 		addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
 2376      0000
 452:trigo_fast.c  **** return scs_cos_rd(x);
 2377              		.loc 1 452 0
 2378 17f5 DD4508   		fldl	8(%ebp)	# x
 2379 17f8 DD1C24   		fstpl	(%esp)	#
 2380 17fb E8FCFFFF 		call	scs_cos_rd@PLT	#
 2380      FF
 453:trigo_fast.c  **** }
 2381              		.loc 1 453 0
 2382 1800 83C414   		addl	$20, %esp	#,
 2383 1803 5B       		popl	%ebx	#
 2384              		.cfi_restore 3
 2385 1804 5D       		popl	%ebp	#
 2386              		.cfi_restore 5
 2387              		.cfi_def_cfa 4, 4
 2388 1805 C3       		ret
 2389              		.cfi_endproc
 2390              	.LFE15:
 2392              	.globl sin_rz
 2394              	sin_rz:
 2395              	.LFB13:
 351:trigo_fast.c  **** double sin_rz(double x){ 
 2396              		.loc 1 351 0
 2397              		.cfi_startproc
 2398              	.LVL265:
 2399 1806 55       		pushl	%ebp	#
 2400              		.cfi_def_cfa_offset 8
 2401              		.cfi_offset 5, -8
 2402 1807 89E5     		movl	%esp, %ebp	#,
 2403              		.cfi_def_cfa_register 5
 2404 1809 53       		pushl	%ebx	#
 2405 180a 83EC14   		subl	$20, %esp	#,
 2406              		.cfi_offset 3, -12
 2407 180d E8FCFFFF 		call	__i686.get_pc_thunk.bx	#
 2407      FF
 2408 1812 81C30200 		addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
 2408      0000
 352:trigo_fast.c  **** return scs_sin_rz(x);
 2409              		.loc 1 352 0
 2410 1818 DD4508   		fldl	8(%ebp)	# x
 2411 181b DD1C24   		fstpl	(%esp)	#
 2412 181e E8FCFFFF 		call	scs_sin_rz@PLT	#
 2412      FF
 353:trigo_fast.c  **** }
 2413              		.loc 1 353 0
 2414 1823 83C414   		addl	$20, %esp	#,
 2415 1826 5B       		popl	%ebx	#
 2416              		.cfi_restore 3
 2417 1827 5D       		popl	%ebp	#
 2418              		.cfi_restore 5
 2419              		.cfi_def_cfa 4, 4
 2420 1828 C3       		ret
 2421              		.cfi_endproc
 2422              	.LFE13:
 2424              	.globl sin_ru
 2426              	sin_ru:
 2427              	.LFB12:
 346:trigo_fast.c  **** double sin_ru(double x){ 
 2428              		.loc 1 346 0
 2429              		.cfi_startproc
 2430              	.LVL266:
 2431 1829 55       		pushl	%ebp	#
 2432              		.cfi_def_cfa_offset 8
 2433              		.cfi_offset 5, -8
 2434 182a 89E5     		movl	%esp, %ebp	#,
 2435              		.cfi_def_cfa_register 5
 2436 182c 53       		pushl	%ebx	#
 2437 182d 83EC14   		subl	$20, %esp	#,
 2438              		.cfi_offset 3, -12
 2439 1830 E8FCFFFF 		call	__i686.get_pc_thunk.bx	#
 2439      FF
 2440 1835 81C30200 		addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
 2440      0000
 347:trigo_fast.c  **** return scs_sin_ru(x);
 2441              		.loc 1 347 0
 2442 183b DD4508   		fldl	8(%ebp)	# x
 2443 183e DD1C24   		fstpl	(%esp)	#
 2444 1841 E8FCFFFF 		call	scs_sin_ru@PLT	#
 2444      FF
 348:trigo_fast.c  **** }
 2445              		.loc 1 348 0
 2446 1846 83C414   		addl	$20, %esp	#,
 2447 1849 5B       		popl	%ebx	#
 2448              		.cfi_restore 3
 2449 184a 5D       		popl	%ebp	#
 2450              		.cfi_restore 5
 2451              		.cfi_def_cfa 4, 4
 2452 184b C3       		ret
 2453              		.cfi_endproc
 2454              	.LFE12:
 2456              	.globl sin_rd
 2458              	sin_rd:
 2459              	.LFB11:
 341:trigo_fast.c  **** double sin_rd(double x){
 2460              		.loc 1 341 0
 2461              		.cfi_startproc
 2462              	.LVL267:
 2463 184c 55       		pushl	%ebp	#
 2464              		.cfi_def_cfa_offset 8
 2465              		.cfi_offset 5, -8
 2466 184d 89E5     		movl	%esp, %ebp	#,
 2467              		.cfi_def_cfa_register 5
 2468 184f 53       		pushl	%ebx	#
 2469 1850 83EC14   		subl	$20, %esp	#,
 2470              		.cfi_offset 3, -12
 2471 1853 E8FCFFFF 		call	__i686.get_pc_thunk.bx	#
 2471      FF
 2472 1858 81C30200 		addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
 2472      0000
 342:trigo_fast.c  **** return scs_sin_rd(x);
 2473              		.loc 1 342 0
 2474 185e DD4508   		fldl	8(%ebp)	# x
 2475 1861 DD1C24   		fstpl	(%esp)	#
 2476 1864 E8FCFFFF 		call	scs_sin_rd@PLT	#
 2476      FF
 343:trigo_fast.c  **** }
 2477              		.loc 1 343 0
 2478 1869 83C414   		addl	$20, %esp	#,
 2479 186c 5B       		popl	%ebx	#
 2480              		.cfi_restore 3
 2481 186d 5D       		popl	%ebp	#
 2482              		.cfi_restore 5
 2483              		.cfi_def_cfa 4, 4
 2484 186e C3       		ret
 2485              		.cfi_endproc
 2486              	.LFE11:
 2488              	.globl sin_rn
 2490              	sin_rn:
 2491              	.LFB10:
 258:trigo_fast.c  **** double sin_rn(double x){ 
 2492              		.loc 1 258 0
 2493              		.cfi_startproc
 2494              	.LVL268:
 2495 186f 55       		pushl	%ebp	#
 2496              		.cfi_def_cfa_offset 8
 2497              		.cfi_offset 5, -8
 2498 1870 89E5     		movl	%esp, %ebp	#,
 2499              		.cfi_def_cfa_register 5
 2500 1872 56       		pushl	%esi	#
 2501 1873 53       		pushl	%ebx	#
 2502 1874 83EC40   		subl	$64, %esp	#,
 2503              		.cfi_offset 3, -16
 2504              		.cfi_offset 6, -12
 2505 1877 E8FCFFFF 		call	__i686.get_pc_thunk.bx	#
 2505      FF
 2506 187c 81C30200 		addl	$_GLOBAL_OFFSET_TABLE_, %ebx	#,
 2506      0000
 2507 1882 DD4508   		fldl	8(%ebp)	# x
 2508 1885 DD55D0   		fstl	-48(%ebp)	# %sfp
 269:trigo_fast.c  ****   xx.d=x;
 2509              		.loc 1 269 0
 2510 1888 DD55C8   		fstl	-56(%ebp)	# %sfp
 270:trigo_fast.c  ****   absxhi = xx.i[HI_ENDIAN] & 0x7fffffff;
 2511              		.loc 1 270 0
 2512 188b 8B4DCC   		movl	-52(%ebp), %ecx	# %sfp, absxhi
 2513 188e 81E1FFFF 		andl	$2147483647, %ecx	#, absxhi
 2513      FF7F
 2514              	.LVL269:
 272:trigo_fast.c  ****   if (absxhi < XMAX_SIN_FAST){
 2515              		.loc 1 272 0
 2516 1894 81F9FFFF 		cmpl	$1068498943, %ecx	#, absxhi
 2516      AF3F
 2517 189a 7F6E     		jg	.L97	#,
 273:trigo_fast.c  ****     if (absxhi <XMAX_RETURN_X_FOR_SIN)
 2518              		.loc 1 273 0
 2519 189c 81F9FFFF 		cmpl	$1045430271, %ecx	#, absxhi
 2519      4F3E
 2520 18a2 0F8E8701 		jle	.L99	#,
 2520      0000
 276:trigo_fast.c  ****     yh=x*x;
 2521              		.loc 1 276 0
 2522 18a8 D9C0     		fld	%st(0)	#
 2523 18aa D8C9     		fmul	%st(1), %st	#,
 2524              	.LVL270:
 278:trigo_fast.c  ****     Add12(sh,sl, x, ts*x);
 2525              		.loc 1 278 0
 2526 18ac D9C0     		fld	%st(0)	#
 2527 18ae DC8B5808 		fmull	s9@GOTOFF(%ebx)	# s9.d
 2527      0000
 2528 18b4 DC833008 		faddl	s7@GOTOFF(%ebx)	# s7.d
 2528      0000
 2529 18ba D8C9     		fmul	%st(1), %st	#,
 2530 18bc DC832808 		faddl	s5@GOTOFF(%ebx)	# s5.d
 2530      0000
 2531 18c2 D8C9     		fmul	%st(1), %st	#,
 2532 18c4 DC832008 		faddl	s3@GOTOFF(%ebx)	# s3.d
 2532      0000
 2533 18ca D8C9     		fmul	%st(1), %st	#,
 2534              	.LBB75:
 2535 18cc D8CA     		fmul	%st(2), %st	#,
 2536              	.LVL271:
 2537 18ce DCC2     		fadd	%st, %st(2)	#,
 2538              	.LVL272:
 2539 18d0 DD45D0   		fldl	-48(%ebp)	# %sfp
 2540              	.LVL273:
 2541 18d3 D8EB     		fsubr	%st(3), %st	#,
 2542 18d5 DEE9     		fsubrp	%st, %st(1)	#,
 2543              	.LBE75:
 279:trigo_fast.c  ****     if(sh == (sh + (sl * RN_CST_SINFAST))){	
 2544              		.loc 1 279 0
 2545 18d7 D9C0     		fld	%st(0)	#
 2546 18d9 DC8B0000 		fmull	.LC48@GOTOFF(%ebx)	#
 2546      0000
 2547 18df D8C3     		fadd	%st(3), %st	#,
 2548 18e1 D9CB     		fxch	%st(3)	#
 2549 18e3 DBEB     		fucomi	%st(3), %st	#,
 2550 18e5 DDDB     		fstp	%st(3)	#
 2551 18e7 7A06     		jp	.L108	#,
 2552 18e9 0F843C01 		je	.L110	#,
 2552      0000
 2553              	.L108:
 2554              	.LBB76:
 278:trigo_fast.c  ****     Add12(sh,sl, x, ts*x);
 2555              		.loc 1 278 0
 2556 18ef DD5DE8   		fstpl	-24(%ebp)	# sl
 2557              	.LVL274:
 2558 18f2 D9C9     		fxch	%st(1)	#
 2559 18f4 DD5DF0   		fstpl	-16(%ebp)	# sh
 2560              	.LVL275:
 2561              	.LBE76:
 276:trigo_fast.c  ****     yh=x*x;
 2562              		.loc 1 276 0
 2563 18f7 DD5DE0   		fstpl	-32(%ebp)	# yh
 2564              	.LVL276:
 282:trigo_fast.c  ****       return scs_sin_rn(x); 
 2565              		.loc 1 282 0
 2566 18fa DD45D0   		fldl	-48(%ebp)	# %sfp
 2567 18fd DD1C24   		fstpl	(%esp)	#
 2568 1900 E8FCFFFF 		call	scs_sin_rn@PLT	#
 2568      FF
 2569              	.LVL277:
 2570 1905 E9250100 		jmp	.L99	#
 2570      00
 2571              	.LVL278:
 2572              	.L97:
 2573 190a DDD8     		fstp	%st(0)	#
 287:trigo_fast.c  ****   k=trig_range_reduction(&yh, &yl,  x, absxhi, &scs_sin_rn);
 2574              		.loc 1 287 0
 2575 190c 8D55D8   		leal	-40(%ebp), %edx	#, tmp86
 2576 190f 8D45E0   		leal	-32(%ebp), %eax	#, tmp87
 2577 1912 8BB30000 		movl	scs_sin_rn@GOT(%ebx), %esi	#, tmp89
 2577      0000
 2578 1918 8974240C 		movl	%esi, 12(%esp)	# tmp89,
 2579 191c 894C2408 		movl	%ecx, 8(%esp)	# absxhi,
 2580 1920 DD45D0   		fldl	-48(%ebp)	# %sfp
 2581 1923 DD1C24   		fstpl	(%esp)	#
 2582 1926 E8B1EBFF 		call	trig_range_reduction	#
 2582      FF
 2583              	.LVL279:
 292:trigo_fast.c  ****   quadrant = (k>>7)&3;
 2584              		.loc 1 292 0
 2585 192b 89C6     		movl	%eax, %esi	# k, tmp90
 2586 192d C1FE07   		sarl	$7, %esi	#, tmp90
 2587 1930 83E603   		andl	$3, %esi	#, quadrant
 2588              	.LVL280:
 293:trigo_fast.c  ****   k=(k&127)<<2;
 2589              		.loc 1 293 0
 2590 1933 83E07F   		andl	$127, %eax	#, D.2312
 2591              	.LVL281:
 2592 1936 C1E002   		sall	$2, %eax	#, k.388
 2593              	.LVL282:
 295:trigo_fast.c  ****   if(k<=(64<<2)) {
 2594              		.loc 1 295 0
 2595 1939 3D000100 		cmpl	$256, %eax	#, k.388
 2595      00
 2596 193e 7F36     		jg	.L100	#,
 296:trigo_fast.c  ****     sah=sincosTable[k+0].d; /* sin(a), high part */
 2597              		.loc 1 296 0
 2598 1940 DD84C300 		fldl	sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
 2598      000000
 2599 1947 DD9B0000 		fstpl	sah@GOTOFF(%ebx)	# sah
 2599      0000
 297:trigo_fast.c  ****     sal=sincosTable[k+1].d; /* sin(a), low part */
 2600              		.loc 1 297 0
 2601 194d DD84C308 		fldl	8+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
 2601      000000
 2602 1954 DD9B0800 		fstpl	sal@GOTOFF(%ebx)	# sal
 2602      0000
 298:trigo_fast.c  ****     cah=sincosTable[k+2].d; /* cos(a), high part */
 2603              		.loc 1 298 0
 2604 195a DD84C310 		fldl	16+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
 2604      000000
 2605 1961 DD9B1000 		fstpl	cah@GOTOFF(%ebx)	# cah
 2605      0000
 299:trigo_fast.c  ****     cal=sincosTable[k+3].d; /* cos(a), low part */
 2606              		.loc 1 299 0
 2607 1967 DD84C318 		fldl	24+sincosTable@GOTOFF(%ebx,%eax,8)	# <variable>.d
 2607      000000
 2608 196e DD9B1800 		fstpl	cal@GOTOFF(%ebx)	# cal
 2608      0000
 2609 1974 EB3B     		jmp	.L101	#
 2610              	.L100:
 2611              	.LBB77:
 301:trigo_fast.c  ****     int k1=(128<<2) - k;
 2612              		.loc 1 301 0
 2613 1976 BA000200 		movl	$512, %edx	#, tmp106
 2613      00
 2614 197b 29C2     		subl	%eax, %edx	# k.388, tmp106
 2615              	.LVL283:
 302:trigo_fast.c  ****     cah=sincosTable[k1+0].d; /* cos(a), high part */
 2616              		.loc 1 302 0
 2617 197d DD84D300 		fldl	sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
 2617      000000
 2618 1984 DD9B1000 		fstpl	cah@GOTOFF(%ebx)	# cah
 2618      0000
 303:trigo_fast.c  ****     cal=sincosTable[k1+1].d; /* cos(a), low part  */ 
 2619              		.loc 1 303 0
 2620 198a DD84D308 		fldl	8+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
 2620      000000
 2621 1991 DD9B1800 		fstpl	cal@GOTOFF(%ebx)	# cal
 2621      0000
 304:trigo_fast.c  ****     sah=sincosTable[k1+2].d; /* sin(a), high part */
 2622              		.loc 1 304 0
 2623 1997 DD84D310 		fldl	16+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
 2623      000000
 2624 199e DD9B0000 		fstpl	sah@GOTOFF(%ebx)	# sah
 2624      0000
 305:trigo_fast.c  ****     sal=sincosTable[k1+3].d; /* sin(a), low part  */
 2625              		.loc 1 305 0
 2626 19a4 DD84D318 		fldl	24+sincosTable@GOTOFF(%ebx,%edx,8)	# <variable>.d
 2626      000000
 2627 19ab DD9B0800 		fstpl	sal@GOTOFF(%ebx)	# sal
 2627      0000
 2628              	.LVL284:
 2629              	.L101:
 2630              	.LBE77:
 321:trigo_fast.c  ****   if (quadrant&1)   /*compute the cos  */
 2631              		.loc 1 321 0
 2632 19b1 F7C60100 		testl	$1, %esi	#, quadrant
 2632      0000
 2633 19b7 741A     		je	.L102	#,
 322:trigo_fast.c  ****     do_cos(&sh, &sl,  yh,yl);
 2634              		.loc 1 322 0
 2635 19b9 8D55E8   		leal	-24(%ebp), %edx	#, tmp123
 2636 19bc 8D45F0   		leal	-16(%ebp), %eax	#, tmp124
 2637              	.LVL285:
 2638 19bf DD45D8   		fldl	-40(%ebp)	# yl
 2639 19c2 DD5C2408 		fstpl	8(%esp)	#
 2640              	.LVL286:
 2641 19c6 DD45E0   		fldl	-32(%ebp)	# yh
 2642 19c9 DD1C24   		fstpl	(%esp)	#
 2643 19cc E8D1E8FF 		call	do_cos	#
 2643      FF
 2644 19d1 EB18     		jmp	.L103	#
 2645              	.LVL287:
 2646              	.L102:
 324:trigo_fast.c  ****     do_sin(&sh, &sl,  yh,yl);
 2647              		.loc 1 324 0
 2648 19d3 8D55E8   		leal	-24(%ebp), %edx	#, tmp127
 2649 19d6 8D45F0   		leal	-16(%ebp), %eax	#, tmp128
 2650              	.LVL288:
 2651 19d9 DD45D8   		fldl	-40(%ebp)	# yl
 2652 19dc DD5C2408 		fstpl	8(%esp)	#
 2653              	.LVL289:
 2654 19e0 DD45E0   		fldl	-32(%ebp)	# yh
 2655 19e3 DD1C24   		fstpl	(%esp)	#
 2656 19e6 E87EE6FF 		call	do_sin	#
 2656      FF
 2657              	.L103:
 327:trigo_fast.c  ****   if(quadrant>=2) { 
 2658              		.loc 1 327 0
 2659 19eb 83FE01   		cmpl	$1, %esi	#, quadrant
 2660 19ee 7E10     		jle	.L104	#,
 2661              	.LVL290:
 328:trigo_fast.c  ****     sh = -sh;
 2662              		.loc 1 328 0
 2663 19f0 DD45F0   		fldl	-16(%ebp)	# sh
 2664 19f3 D9E0     		fchs
 2665 19f5 DD5DF0   		fstpl	-16(%ebp)	# sh
 2666              	.LVL291:
 329:trigo_fast.c  ****     sl = -sl;
 2667              		.loc 1 329 0
 2668 19f8 DD45E8   		fldl	-24(%ebp)	# sl
 2669 19fb D9E0     		fchs
 2670 19fd DD5DE8   		fstpl	-24(%ebp)	# sl
 2671              	.L104:
 332:trigo_fast.c  ****   if(sh == (sh + (sl * 1.0004))){	
 2672              		.loc 1 332 0
 2673 1a00 DD45F0   		fldl	-16(%ebp)	# sh
 2674 1a03 DD830000 		fldl	.LC43@GOTOFF(%ebx)	#
 2674      0000
 2675 1a09 DC4DE8   		fmull	-24(%ebp)	# sl
 2676 1a0c D8C1     		fadd	%st(1), %st	#,
 2677 1a0e D9C9     		fxch	%st(1)	#
 2678 1a10 DBE9     		fucomi	%st(1), %st	#,
 2679 1a12 DDD9     		fstp	%st(1)	#
 2680 1a14 7A06     		jp	.L111	#,
 2681 1a16 7417     		je	.L99	#,
 2682 1a18 DDD8     		fstp	%st(0)	#
 2683 1a1a EB02     		jmp	.L109	#
 2684              	.L111:
 2685 1a1c DDD8     		fstp	%st(0)	#
 2686              	.L109:
 335:trigo_fast.c  ****     return scs_sin_rn(x); 
 2687              		.loc 1 335 0
 2688 1a1e DD45D0   		fldl	-48(%ebp)	# %sfp
 2689 1a21 DD1C24   		fstpl	(%esp)	#
 2690 1a24 E8FCFFFF 		call	scs_sin_rn@PLT	#
 2690      FF
 2691 1a29 EB04     		jmp	.L99	#
 2692              	.LVL292:
 2693              	.L110:
 2694 1a2b DDD8     		fstp	%st(0)	#
 2695 1a2d DDD8     		fstp	%st(0)	#
 2696              	.LVL293:
 2697              	.L99:
 338:trigo_fast.c  **** }
 2698              		.loc 1 338 0
 2699 1a2f 83C440   		addl	$64, %esp	#,
 2700 1a32 5B       		popl	%ebx	#
 2701              		.cfi_restore 3
 2702 1a33 5E       		popl	%esi	#
 2703              		.cfi_restore 6
 2704 1a34 5D       		popl	%ebp	#
 2705              		.cfi_restore 5
 2706              		.cfi_def_cfa 4, 4
 2707 1a35 C3       		ret
 2708              		.cfi_endproc
 2709              	.LFE10:
 2711              		.section	.rodata
 2712              		.align 32
 2715              	sincosTable:
 2716              	# i:
 2717 0000 00000000 		.long	0
 2718 0004 00000000 		.long	0
 2719              	# i:
 2720 0008 00000000 		.long	0
 2721 000c 00000000 		.long	0
 2722              	# i:
 2723 0010 00000000 		.long	0
 2724 0014 0000F03F 		.long	1072693248
 2725              	# i:
 2726 0018 00000000 		.long	0
 2727 001c 00000000 		.long	0
 2728              	# i:
 2729 0020 84C7DEFC 		.long	-52508796
 2730 0024 D121893F 		.long	1065951697
 2731              	# i:
 2732 0028 9D6D83BE 		.long	-1098682979
 2733 002c 8E87293C 		.long	1009354638
 2734              	# i:
 2735 0030 DB929B16 		.long	379294427
 2736 0034 62FFEF3F 		.long	1072693090
 2737              	# i:
 2738 0038 0DBD1FC8 		.long	-937444083
 2739 003c A3DD853C 		.long	1015405987
 2740              	# i:
 2741 0040 7E66A3F7 		.long	-140286338
 2742 0044 5521993F 		.long	1067000149
 2743              	# i:
 2744 0048 30011A09 		.long	152699184
 2745 004c 631DFBBB 		.long	-1141170845
 2746              	# i:
 2747 0050 0DCD8460 		.long	1619315981
 2748 0054 88FDEF3F 		.long	1072692616
 2749              	# i:
 2750 0058 CBE45645 		.long	1163322571
 2751 005c 4D3581BC 		.long	-1132382899
 2752              	# i:
 2753 0060 CD559475 		.long	1972655565
 2754 0064 65D8A23F 		.long	1067636837
 2755              	# i:
 2756 0068 C03AA95B 		.long	1537817280
 2757 006c F686263C 		.long	1009157878
 2758              	# i:
 2759 0070 5DF7FEEF 		.long	-268503203
 2760 0074 72FAEF3F 		.long	1072691826
 2761              	# i:
 2762 0078 5659B2CD 		.long	-843949738
 2763 007c CDB488BC 		.long	-1131891507
 2764              	# i:
 2765 0080 14D80DF1 		.long	-250750956
 2766 0084 651FA93F 		.long	1068048229
 2767              	# i:
 2768 0088 909A560D 		.long	223779472
 2769 008c BD1229BC 		.long	-1138158915
 2770              	# i:
 2771 0090 7E6D79E3 		.long	-478581378
 2772 0094 21F6EF3F 		.long	1072690721
 2773              	# i:
 2774 0098 15AA242E 		.long	774154773
 2775 009c BC576CBC 		.long	-1133750340
 2776              	# i:
 2777 00a0 E020F879 		.long	2046304480
 2778 00a4 6E65AF3F 		.long	1068459374
 2779              	# i:
 2780 00a8 FEBF92E3 		.long	-476921858
 2781 00ac EBE122BC 		.long	-1138564629
 2782              	# i:
 2783 00b0 AD718E65 		.long	1703834029
 2784 00b4 95F0EF3F 		.long	1072689301
 2785              	# i:
 2786 00b8 9E4B8AE1 		.long	-511030370
 2787 00bc 8C1A803C 		.long	1015028364
 2788              	# i:
 2789 00c0 F619CE92 		.long	-1831986698
 2790 00c4 20D5B23F 		.long	1068684576
 2791              	# i:
 2792 00c8 2C6BBFA8 		.long	-1463850196
 2793 00cc 88A049BC 		.long	-1136025464
 2794              	# i:
 2795 00d0 3A8801AD 		.long	-1392408518
 2796 00d4 CDE9EF3F 		.long	1072687565
 2797              	# i:
 2798 00d8 357EC6D0 		.long	-792297931
 2799 00dc EC21653C 		.long	1013260780
 2800              	# i:
 2801 00e0 19A49A0A 		.long	177906713
 2802 00e4 D0F6B53F 		.long	1068889808
 2803              	# i:
 2804 00e8 9A6C3FD0 		.long	-801149798
 2805 00ec 22404FBC 		.long	-1135656926
 2806              	# i:
 2807 00f0 095BBDFC 		.long	-54699255
 2808 00f4 CAE1EF3F 		.long	1072685514
 2809              	# i:
 2810 00f8 4E882A20 		.long	539658318
 2811 00fc E3236A3C 		.long	1013588963
 2812              	# i:
 2813 0100 2CB429BC 		.long	-1138117588
 2814 0104 A617B93F 		.long	1069094822
 2815              	# i:
 2816 0108 88D66ED2 		.long	-764488056
 2817 010c 18273EBC 		.long	-1136777448
 2818              	# i:
 2819 0110 2625D1A3 		.long	-1546574554
 2820 0114 8DD8EF3F 		.long	1072683149
 2821              	# i:
 2822 0118 C7118837 		.long	931664327
 2823 011c F67D88BC 		.long	-1131905546
 2824              	# i:
 2825 0120 D5C29EC7 		.long	-945896747
 2826 0124 8537BC3F 		.long	1069299589
 2827              	# i:
 2828 0128 21FB33F1 		.long	-248251615
 2829 012c 9DF324BC 		.long	-1138429027
 2830              	# i:
 2831 0130 7BA66DFD 		.long	-43145605
 2832 0134 15CEEF3F 		.long	1072680469
 2833              	# i:
 2834 0138 094C0D83 		.long	-2096280567
 2835 013c 6FDD75BC 		.long	-1133126289
 2836              	# i:
 2837 0140 0E73A956 		.long	1453945614
 2838 0144 4E56BF3F 		.long	1069504078
 2839              	# i:
 2840 0148 6DE59A72 		.long	1922753901
 2841 014c 04274A3C 		.long	1011492612
 2842              	# i:
 2843 0150 D39FE170 		.long	1893834707
 2844 0154 64C2EF3F 		.long	1072677476
 2845              	# i:
 2846 0158 EEACEC68 		.long	1760341230
 2847 015c 86EC813C 		.long	1015147654
 2848              	# i:
 2849 0160 77F5DACE 		.long	-824511113
 2850 0164 F039C13F 		.long	1069627888
 2851              	# i:
 2852 0168 FA3C1B4D 		.long	1293630714
 2853 016c 432365BC 		.long	-1134222525
 2854              	# i:
 2855 0170 41D79571 		.long	1905645377
 2856 0174 79B5EF3F 		.long	1072674169
 2857              	# i:
 2858 0178 08CC9773 		.long	1939328008
 2859 017c ACBF713C 		.long	1014087596
 2860              	# i:
 2861 0180 3A618E6E 		.long	1854824762
 2862 0184 10C8C23F 		.long	1069729808
 2863              	# i:
 2864 0188 E0119AA8 		.long	-1466297888
 2865 018c 0030513C 		.long	1011953664
 2866              	# i:
 2867 0190 17A5087F 		.long	2131272983
 2868 0194 55A7EF3F 		.long	1072670549
 2869              	# i:
 2870 0198 1F5713CA 		.long	-904702177
 2871 019c A8A087BC 		.long	-1131962200
 2872              	# i:
 2873 01a0 5A3E29B1 		.long	-1322697126
 2874 01a4 7655C43F 		.long	1069831542
 2875              	# i:
 2876 01a8 B1F71941 		.long	1092220849
 2877 01ac A28552BC 		.long	-1135442526
 2878              	# i:
 2879 01b0 9B09C924 		.long	617154971
 2880 01b4 F997EF3F 		.long	1072666617
 2881              	# i:
 2882 01b8 3B96A5EE 		.long	-291137989
 2883 01bc E02A8EBC 		.long	-1131533600
 2884              	# i:
 2885 01c0 C63F8B44 		.long	1149976518
 2886 01c4 14E2C53F 		.long	1069933076
 2887              	# i:
 2888 01c8 C6DA9D77 		.long	2006833862
 2889 01cc FF31653C 		.long	1013264895
 2890              	# i:
 2891 01d0 A94B71FA 		.long	-93238359
 2892 01d4 6487EF3F 		.long	1072662372
 2893              	# i:
 2894 01d8 B6FC8F77 		.long	2005925046
 2895 01dc 56B27A3C 		.long	1014674006
 2896              	# i:
 2897 01e0 31BF50DE 		.long	-565133519
 2898 01e4 D96DC73F 		.long	1070034393
 2899              	# i:
 2900 01e8 2F1B50EC 		.long	-330294481
 2901 01ec EED5613C 		.long	1013044718
 2902              	# i:
 2903 01f0 7720A1A3 		.long	-1549721481
 2904 01f4 9975EF3F 		.long	1072657817
 2905              	# i:
 2906 01f8 5C1943D7 		.long	-683468452
 2907 01fc 314F883C 		.long	1015566129
 2908              	# i:
 2909 0200 0BA6693C 		.long	1013556747
 2910 0204 B8F8C83F 		.long	1070135480
 2911              	# i:
 2912 0208 828DFFB9 		.long	-1174434430
 2913 020c 196D62BC 		.long	-1134400231
 2914              	# i:
 2915 0210 B05CF7CF 		.long	-805872464
 2916 0214 9762EF3F 		.long	1072652951
 2917              	# i:
 2918 0218 D31F362A 		.long	708190163
 2919 021c 1762753C 		.long	1014325783
 2920              	# i:
 2921 0220 5104B025 		.long	632292433
 2922 0224 A082CA3F 		.long	1070236320
 2923              	# i:
 2924 0228 AD84D0FF 		.long	-3111763
 2925 022c 057968BC 		.long	-1134003963
 2926              	# i:
 2927 0230 2D2F0B3B 		.long	990588717
 2928 0234 604EEF3F 		.long	1072647776
 2929              	# i:
 2930 0238 05AC95E6 		.long	-426398715
 2931 023c 01EE78BC 		.long	-1132925439
 2932              	# i:
 2933 0240 634F7E6A 		.long	1786662755
 2934 0244 820BCC3F 		.long	1070336898
 2935              	# i:
 2936 0248 3519529E 		.long	-1638786763
 2937 024c 43F11ABC 		.long	-1139084989
 2938              	# i:
 2939 0250 89E564AC 		.long	-1402673783
 2940 0254 F338EF3F 		.long	1072642291
 2941              	# i:
 2942 0258 E6721FB5 		.long	-1256230170
 2943 025c AF7B7DBC 		.long	-1132627025
 2944              	# i:
 2945 0260 114345E5 		.long	-448445679
 2946 0264 4F93CD3F 		.long	1070437199
 2947              	# i:
 2948 0268 AD077127 		.long	661718957
 2949 026c 925B673C 		.long	1013406610
 2950              	# i:
 2951 0270 DA3A76F7 		.long	-143246630
 2952 0274 5222EF3F 		.long	1072636498
 2953              	# i:
 2954 0278 AB948D1C 		.long	479040683
 2955 027c B80C82BC 		.long	-1132327752
 2956              	# i:
 2957 0280 1B5F217B 		.long	2065784603
 2958 0284 F919CF3F 		.long	1070537209
 2959              	# i:
 2960 0288 C4A21DF1 		.long	-249716028
 2961 028c EE2D64BC 		.long	-1134285330
 2962              	# i:
 2963 0290 D73092FB 		.long	-74305321
 2964 0294 7E0AEF3F 		.long	1072630398
 2965              	# i:
 2966 0298 89496BDC 		.long	-596948599
 2967 029c 7A2C753C 		.long	1014312058
 2968              	# i:
 2969 02a0 AEFD370E 		.long	238550446
 2970 02a4 B84FD03F 		.long	1070616504
 2971              	# i:
 2972 02a8 CC8325B7 		.long	-1222278196
 2973 02ac CD1204BC 		.long	-1140583731
 2974              	# i:
 2975 02b0 C273E4A3 		.long	-1545309246
 2976 02b4 78F1EE3F 		.long	1072623992
 2977              	# i:
 2978 02b8 4F77FE67 		.long	1744729935
 2979 02bc 0A31863C 		.long	1015427338
 2980              	# i:
 2981 02c0 77F6B162 		.long	1655830135
 2982 02c4 D211D13F 		.long	1070666194
 2983              	# i:
 2984 02c8 9AAAB70A 		.long	179808922
 2985 02cc C224783C 		.long	1014506690
 2986              	# i:
 2987 02d0 634968E7 		.long	-412595869
 2988 02d4 40D7EE3F 		.long	1072617280
 2989              	# i:
 2990 02d8 C29CF591 		.long	-1846174526
 2991 02dc C7827E3C 		.long	1014923975
 2992              	# i:
 2993 02e0 3EDB4C3F 		.long	1062001470
 2994 02e4 44D3D13F 		.long	1070715716
 2995              	# i:
 2996 02e8 9E51131C 		.long	471028126
 2997 02ec D42067BC 		.long	-1134092076
 2998              	# i:
 2999 02f0 740BDFC8 		.long	-924906636
 3000 02f4 D8BBEE3F 		.long	1072610264
 3001              	# i:
 3002 02f8 77725E61 		.long	1633579639
 3003 02fc 8C6C7C3C 		.long	1014787212
 3004              	# i:
 3005 0300 069FD52E 		.long	785751814
 3006 0304 0694D23F 		.long	1070765062
 3007              	# i:
 3008 0308 2D61C4A2 		.long	-1564188371
 3009 030c 8DD275BC 		.long	-1133129075
 3010              	# i:
 3011 0310 DA2DC656 		.long	1455828442
 3012 0314 419FEE3F 		.long	1072602945
 3013              	# i:
 3014 0318 1EF8E3E2 		.long	-488376290
 3015 031c B160873C 		.long	1015505073
 3016              	# i:
 3017 0320 5281E1C2 		.long	-1025408686
 3018 0324 1054D33F 		.long	1070814224
 3019              	# i:
 3020 0328 62E0962F 		.long	798416994
 3021 032c 00CB73BC 		.long	-1133262080
 3022              	# i:
 3023 0330 0DD14CAB 		.long	-1421029107
 3024 0334 7B81EE3F 		.long	1072595323
 3025              	# i:
 3026 0338 0A5E6B68 		.long	1751866890
 3027 033c FE0A7DBC 		.long	-1132655874
 3028              	# i:
 3029 0340 01661794 		.long	-1810405887
 3030 0344 5C13D43F 		.long	1070863196
 3031              	# i:
 3032 0348 1825FA4A 		.long	1257907480
 3033 034c 7CC9703C 		.long	1014024572
 3034              	# i:
 3035 0350 12E148EC 		.long	-330768110
 3036 0354 8862EE3F 		.long	1072587400
 3037              	# i:
 3038 0358 547784F2 		.long	-226199724
 3039 035c 566B61BC 		.long	-1134466218
 3040              	# i:
 3041 0360 6AE77842 		.long	1115219818
 3042 0364 E2D1D43F 		.long	1070911970
 3043              	# i:
 3044 0368 58287918 		.long	410593368
 3045 036c 7241623C 		.long	1013072242
 3046              	# i:
 3047 0370 7EC12B4B 		.long	1261158782
 3048 0374 6A42EE3F 		.long	1072579178
 3049              	# i:
 3050 0378 82487489 		.long	-1988867966
 3051 037c 38878A3C 		.long	1015711544
 3052              	# i:
 3053 0380 DD1FAB75 		.long	1974149085
 3054 0384 9A8FD53F 		.long	1070960538
 3055              	# i:
 3056 0388 20F68CD5 		.long	-712182240
 3057 038c C0FD1EBC 		.long	-1138819648
 3058              	# i:
 3059 0390 E586F604 		.long	83265253
 3060 0394 2121EE3F 		.long	1072570657
 3061              	# i:
 3062 0398 2765126C 		.long	1813144871
 3063 039c C71480BC 		.long	-1132456761
 3064              	# i:
 3065 03a0 C6273FDD 		.long	-583063610
 3066 03a4 7D4CD63F 		.long	1071008893
 3067              	# i:
 3068 03a8 2141664A 		.long	1248215329
 3069 03ac 2B0D513C 		.long	1011944747
 3070              	# i:
 3071 03b0 2BBE2D62 		.long	1647164971
 3072 03b4 AEFEED3F 		.long	1072561838
 3073              	# i:
 3074 03b8 67554288 		.long	-2008918681
 3075 03bc EA1485BC 		.long	-1132129046
 3076              	# i:
 3077 03c0 9F45FA30 		.long	821708191
 3078 03c4 8508D73F 		.long	1071057029
 3079              	# i:
 3080 03c8 5D4C86E0 		.long	-528069539
 3081 03cc 194B74BC 		.long	-1133229287
 3082              	# i:
 3083 03d0 3CC2CCB6 		.long	-1228094916
 3084 03d4 13DBED3F 		.long	1072552723
 3085              	# i:
 3086 03d8 B37D10C6 		.long	-971997773
 3087 03dc 373C883C 		.long	1015561271
 3088              	# i:
 3089 03e0 E7CC1D31 		.long	824036583
 3090 03e4 A9C3D73F 		.long	1071104937
 3091              	# i:
 3092 03e8 D9E8F31E 		.long	519301337
 3093 03ec F2A3193C 		.long	1008313330
 3094              	# i:
 3095 03f0 9BA03862 		.long	1647878299
 3096 03f4 52B6ED3F 		.long	1072543314
 3097              	# i:
 3098 03f8 6094E6EA 		.long	-353987488
 3099 03fc E7DE7ABC 		.long	-1132798233
 3100              	# i:
 3101 0400 63A9AEA6 		.long	-1498502813
 3102 0404 E27DD83F 		.long	1071152610
 3103              	# i:
 3104 0408 10A6D5D3 		.long	-740973040
 3105 040c ED2C67BC 		.long	-1134088979
 3106              	# i:
 3107 0410 468D32CF 		.long	-818770618
 3108 0414 6B90ED3F 		.long	1072533611
 3109              	# i:
 3110 0418 C21A2310 		.long	270736066
 3111 041c E657743C 		.long	1014257638
 3112              	# i:
 3113 0420 D793BC63 		.long	1673302999
 3114 0424 2A37D93F 		.long	1071200042
 3115              	# i:
 3116 0428 B1D55A9E 		.long	-1638214223
 3117 042c 3184663C 		.long	1013351473
 3118              	# i:
 3119 0430 8BE6C973 		.long	1942611595
 3120 0434 6169ED3F 		.long	1072523617
 3121              	# i:
 3122 0438 553D39C6 		.long	-969327275
 3123 043c 618C7EBC 		.long	-1132557215
 3124              	# i:
 3125 0440 8AEDA843 		.long	1135144330
 3126 0444 79EFD93F 		.long	1071247225
 3127              	# i:
 3128 0448 ABDB0B29 		.long	688642987
 3129 044c 81DA663C 		.long	1013373569
 3130              	# i:
 3131 0450 3AC94DD1 		.long	-783431366
 3132 0454 3441ED3F 		.long	1072513332
 3133              	# i:
 3134 0458 F25AD295 		.long	-1781376270
 3135 045c 52EF84BC 		.long	-1132138670
 3136              	# i:
 3137 0460 CA3F6D2B 		.long	728580042
 3138 0464 C8A6DA3F 		.long	1071294152
 3139              	# i:
 3140 0468 F7CCE56E 		.long	1860553975
 3141 046c 105F7DBC 		.long	-1132634352
 3142              	# i:
 3143 0470 DC353E74 		.long	1950234076
 3144 0474 E717ED3F 		.long	1072502759
 3145              	# i:
 3146 0478 0A134035 		.long	893391626
 3147 047c DA0151BC 		.long	-1135541798
 3148              	# i:
 3149 0480 C05CE109 		.long	165764288
 3150 0484 105DDB3F 		.long	1071340816
 3151              	# i:
 3152 0488 834197CB 		.long	-879279741
 3153 048c 62B3653C 		.long	1013298018
 3154              	# i:
 3155 0490 73C73CF4 		.long	-197343373
 3156 0494 7AEDEC3F 		.long	1072491898
 3157              	# i:
 3158 0498 AE58ABB5 		.long	-1247061842
 3159 049c 6B7B5EBC 		.long	-1134658709
 3160              	# i:
 3161 04a0 E71E01D8 		.long	-671015193
 3162 04a4 4912DC3F 		.long	1071387209
 3163              	# i:
 3164 04a8 065251BB 		.long	-1152298490
 3165 04ac AA1378BC 		.long	-1132981334
 3166              	# i:
 3167 04b0 5CFCFCF3 		.long	-201524132
 3168 04b4 F0C1EC3F 		.long	1072480752
 3169              	# i:
 3170 04b8 ABF6683B 		.long	996734635
 3171 04bc 61577E3C 		.long	1014912865
 3172              	# i:
 3173 04c0 5EC43199 		.long	-1724791714
 3174 04c4 6EC6DC3F 		.long	1071433326
 3175              	# i:
 3176 04c8 8F7FC359 		.long	1505984399
 3177 04cc 0E85563C 		.long	1012303118
 3178              	# i:
 3179 04d0 F5113421 		.long	557060597
 3180 04d4 4B95EC3F 		.long	1072469323
 3181              	# i:
 3182 04d8 0366941E 		.long	513041923
 3183 04dc 76FB52BC 		.long	-1135412362
 3184              	# i:
 3185 04e0 89E3865B 		.long	1535566729
 3186 04e4 7779DD3F 		.long	1071479159
 3187              	# i:
 3188 04e8 7505BC87 		.long	-2017720971
 3189 04ec EC50753C 		.long	1014321388
 3190              	# i:
 3191 04f0 9B738834 		.long	881357723
 3192 04f4 8B67EC3F 		.long	1072457611
 3193              	# i:
 3194 04f8 5BFFC5C7 		.long	-943325349
 3195 04fc CA866D3C 		.long	1013810890
 3196              	# i:
 3197 0500 3BF60638 		.long	939980347
 3198 0504 5D2BDE3F 		.long	1071524701
 3199              	# i:
 3200 0508 41683C1D 		.long	490498113
 3201 050c 890D5E3C 		.long	1012796809
 3202              	# i:
 3203 0510 B1BD80F1 		.long	-243221071
 3204 0514 B238EC3F 		.long	1072445618
 3205              	# i:
 3206 0518 078D7C75 		.long	1971096839
 3207 051c B1E076BC 		.long	-1133059919
 3208              	# i:
 3209 0520 D678EF52 		.long	1391425750
 3210 0524 19DCDE3F 		.long	1071569945
 3211              	# i:
 3212 0528 E6DE3EC3 		.long	-1019289882
 3213 052c F7D07DBC 		.long	-1132605193
 3214              	# i:
 3215 0530 49557226 		.long	645027145
 3216 0534 C408EC3F 		.long	1072433348
 3217              	# i:
 3218 0538 46290ED8 		.long	-670160570
 3219 053c 7F155B3C 		.long	1012602239
 3220              	# i:
 3221 0540 BA9AF8DB 		.long	-604464454
 3222 0544 A48BDF3F 		.long	1071614884
 3223              	# i:
 3224 0548 B876B7C1 		.long	-1044941128
 3225 054c 1FEC32BC 		.long	-1137513441
 3226              	# i:
 3227 0550 2A956FAC 		.long	-1401973462
 3228 0554 C0D7EB3F 		.long	1072420800
 3229              	# i:
 3230 0558 0A70AC32 		.long	850161674
 3231 055c A72588BC 		.long	-1131928153
 3232              	# i:
 3233 0560 B73E4C87 		.long	-2025046345
 3234 0564 FC1CE03F 		.long	1071652092
 3235              	# i:
 3236 0568 8C36C2E7 		.long	-406702452
 3237 056c 354A73BC 		.long	-1133295051
 3238              	# i:
 3239 0570 D2903567 		.long	1731563730
 3240 0574 AAA5EB3F 		.long	1072407978
 3241              	# i:
 3242 0578 B6530737 		.long	923227062
 3243 057c 4EEA873C 		.long	1015540302
 3244              	# i:
 3245 0580 EEFF2299 		.long	-1725759506
 3246 0584 8773E03F 		.long	1071674247
 3247              	# i:
 3248 0588 6C404743 		.long	1128743020
 3249 058c 015A8ABC 		.long	-1131783679
 3250              	# i:
 3251 0590 3E6E1945 		.long	1159294526
 3252 0594 8372EB3F 		.long	1072394883
 3253              	# i:
 3254 0598 616D4E32 		.long	844000609
 3255 059c 9FC68BBC 		.long	-1131690337
 3256              	# i:
 3257 05a0 8F895D4D 		.long	1297975695
 3258 05a4 70C9E03F 		.long	1071696240
 3259              	# i:
 3260 05a8 B2E96EDE 		.long	-563156558
 3261 05ac D7D388BC 		.long	-1131883561
 3262              	# i:
 3263 05b0 1257F53E 		.long	1056266002
 3264 05b4 4D3EEB3F 		.long	1072381517
 3265              	# i:
 3266 05b8 93A411BF 		.long	-1089362797
 3267 05bc B8B68EBC 		.long	-1131497800
 3268              	# i:
 3269 05c0 234B1B54 		.long	1411074851
 3270 05c4 B31EE13F 		.long	1071718067
 3271              	# i:
 3272 05c8 F1E4AB69 		.long	1772872945
 3273 05cc 3BF28EBC 		.long	-1131482565
 3274              	# i:
 3275 05d0 00021558 		.long	1477771776
 3276 05d4 0A09EB3F 		.long	1072367882
 3277              	# i:
 3278 05d8 CEFC0F30 		.long	806354126
 3279 05dc DA2689BC 		.long	-1131862310
 3280              	# i:
 3281 05e0 49DBDE63 		.long	1675549513
 3282 05e4 4D73E13F 		.long	1071739725
 3283              	# i:
 3284 05e8 7505C5CC 		.long	-859503243
 3285 05ec F2EE87BC 		.long	-1131942158
 3286              	# i:
 3287 05f0 11D5219E 		.long	-1641949935
 3288 05f4 BCD2EA3F 		.long	1072353980
 3289              	# i:
 3290 05f8 48A5BE07 		.long	129934664
 3291 05fc BE7F84BC 		.long	-1132167234
 3292              	# i:
 3293 0600 C868AE39 		.long	967731400
 3294 0604 3BC7E13F 		.long	1071761211
 3295              	# i:
 3296 0608 00667F26 		.long	645883392
 3297 060c DD258B3C 		.long	1015752157
 3298              	# i:
 3299 0610 A3A10E29 		.long	688824739
 3300 0614 669BEA3F 		.long	1072339814
 3301              	# i:
 3302 0618 C8DAB6E8 		.long	-390669624
 3303 061c 30F6393C 		.long	1010431536
 3304              	# i:
 3305 0620 59EB3399 		.long	-1724650663
 3306 0624 791AE23F 		.long	1071782521
 3307              	# i:
 3308 0628 B28FC677 		.long	2009501618
 3309 062c B1A783BC 		.long	-1132222543
 3310              	# i:
 3311 0630 E2FA021B 		.long	453180130
 3312 0634 0963EA3F 		.long	1072325385
 3313              	# i:
 3314 0638 108D2452 		.long	1378127120
 3315 063c 11917EBC 		.long	-1132556015
 3316              	# i:
 3317 0640 DF12DD4C 		.long	1289556703
 3318 0644 056DE23F 		.long	1071803653
 3319              	# i:
 3320 0648 0C77F33E 		.long	1056143116
 3321 064c 74DA85BC 		.long	-1132078476
 3322              	# i:
 3323 0650 822746A0 		.long	-1606015102
 3324 0654 A729EA3F 		.long	1072310695
 3325              	# i:
 3326 0658 75F15D01 		.long	22933877
 3327 065c BB2871BC 		.long	-1133434693
 3328              	# i:
 3329 0660 EAF3FA25 		.long	637203434
 3330 0664 DBBEE23F 		.long	1071824603
 3331              	# i:
 3332 0668 46EE96C7 		.long	-946409914
 3333 066c 814951BC 		.long	-1135523455
 3334              	# i:
 3335 0670 94AF29EF 		.long	-282480748
 3336 0674 43EFE93F 		.long	1072295747
 3337              	# i:
 3338 0678 C24504B6 		.long	-1241233982
 3339 067c FC1D7B3C 		.long	1014701564
 3340              	# i:
 3341 0680 3570E1FC 		.long	-52334539
 3342 0684 F70FE33F 		.long	1071845367
 3343              	# i:
 3344 0688 6F4AF726 		.long	653740655
 3345 068c C6FC6EBC 		.long	-1133577018
 3346              	# i:
 3347 0690 4187F347 		.long	1207142209
 3348 0694 E0B3E93F 		.long	1072280544
 3349              	# i:
 3350 0698 74247186 		.long	-2039405452
 3351 069c E20E83BC 		.long	-1132261662
 3352              	# i:
 3353 06a0 F35906B1 		.long	-1324983821
 3354 06a4 5860E33F 		.long	1071865944
 3355              	# i:
 3356 06a8 E75758A3 		.long	-1554491417
 3357 06ac B3FC81BC 		.long	-1132331853
 3358              	# i:
 3359 06b0 42D7C7F4 		.long	-188229822
 3360 06b4 7E77E93F 		.long	1072265086
 3361              	# i:
 3362 06b8 5E6640A2 		.long	-1572837794
 3363 06bc 795481BC 		.long	-1132374919
 3364              	# i:
 3365 06c0 B9502029 		.long	689983673
 3366 06c4 FAAFE33F 		.long	1071886330
 3367              	# i:
 3368 06c8 644995E3 		.long	-476755612
 3369 06cc 253E7E3C 		.long	1014906405
 3370              	# i:
 3371 06d0 FB639249 		.long	1234330619
 3372 06d4 223AE93F 		.long	1072249378
 3373              	# i:
 3374 06d8 0BDF20A9 		.long	-1457463541
 3375 06dc 19D4833C 		.long	1015272473
 3376              	# i:
 3377 06e0 D4564553 		.long	1397053140
 3378 06e4 D9FEE33F 		.long	1071906521
 3379              	# i:
 3380 06e8 61508C60 		.long	1619808353
 3381 06ec 1669833C 		.long	1015245078
 3382              	# i:
 3383 06f0 0D94EFA3 		.long	-1544580083
 3384 06f4 CCFBE83F 		.long	1072233420
 3385              	# i:
 3386 06f8 F1F2869C 		.long	-1668877583
 3387 06fc A9DF66BC 		.long	-1134108759
 3388              	# i:
 3389 0700 D61D0925 		.long	621354454
 3390 0704 F34CE43F 		.long	1071926515
 3391              	# i:
 3392 0708 B3C6FD2C 		.long	754828979
 3393 070c 6A07683C 		.long	1013450602
 3394              	# i:
 3395 0710 4117156B 		.long	1796544321
 3396 0714 80BCE83F 		.long	1072217216
 3397              	# i:
 3398 0718 6D33D12E 		.long	785462125
 3399 071c E1C582BC 		.long	-1132280351
 3400              	# i:
 3401 0720 39099B9B 		.long	-1684338375
 3402 0724 449AE43F 		.long	1071946308
 3403              	# i:
 3404 0728 949B716D 		.long	1836161940
 3405 072c E17E82BC 		.long	-1132298527
 3406              	# i:
 3407 0730 BF2EBA0F 		.long	263859903
 3408 0734 407CE83F 		.long	1072200768
 3409              	# i:
 3410 0738 CD643F0C 		.long	205481165
 3411 073c BCDA82BC 		.long	-1132275012
 3412              	# i:
 3413 0740 E9E5E3BB 		.long	-1142692375
 3414 0744 CAE6E43F 		.long	1071965898
 3415              	# i:
 3416 0748 27B3CEED 		.long	-305220825
 3417 074c 93C2633C 		.long	1013170835
 3418              	# i:
 3419 0750 6E97FF0B 		.long	201299822
 3420 0754 0E3BE83F 		.long	1072184078
 3421              	# i:
 3422 0758 7534EAF8 		.long	-118868875
 3423 075c 20F476BC 		.long	-1133054944
 3424              	# i:
 3425 0760 9655A392 		.long	-1834789482
 3426 0764 8232E53F 		.long	1071985282
 3427              	# i:
 3428 0768 5702DA89 		.long	-1982201257
 3429 076c EB127ABC 		.long	-1132850453
 3430              	# i:
 3431 0770 711757E3 		.long	-480831631
 3432 0774 ECF8E73F 		.long	1072167148
 3433              	# i:
 3434 0778 17C993CE 		.long	-829175529
 3435 077c D8C889BC 		.long	-1131820840
 3436              	# i:
 3437 0780 A0EC8C34 		.long	881650848
 3438 0784 697DE53F 		.long	1072004457
 3439              	# i:
 3440 0788 B2FB2B99 		.long	-1725170766
 3441 078c 205787BC 		.long	-1131981024
 3442              	# i:
 3443 0790 AFAF6A22 		.long	577417135
 3444 0794 DFB5E73F 		.long	1072149983
 3445              	# i:
 3446 0798 D70ADFAC 		.long	-1394668841
 3447 079c 37F570BC 		.long	-1133447881
 3448              	# i:
 3449 07a0 8C0165BE 		.long	-1100676724
 3450 07a4 7BC7E53F 		.long	1072023419
 3451              	# i:
 3452 07a8 2AC30B9C 		.long	-1676950742
 3453 07ac EA69803C 		.long	1015048682
 3454              	# i:
 3455 07b0 6172035F 		.long	1594061409
 3456 07b4 E771E73F 		.long	1072132583
 3457              	# i:
 3458 07b8 8F06848D 		.long	-1920727409
 3459 07bc CECF753C 		.long	1014353870
 3460              	# i:
 3461 07c0 DF2C1D55 		.long	1427975391
 3462 07c4 B710E63F 		.long	1072042167
 3463              	# i:
 3464 07c8 372AFF52 		.long	1392454199
 3465 07cc B35172BC 		.long	-1133358669
 3466              	# i:
 3467 07d0 96FFEF37 		.long	938475414
 3468 07d4 082DE73F 		.long	1072114952
 3469              	# i:
 3470 07d8 5C911D0F 		.long	253595996
 3471 07dc EFD4803C 		.long	1015076079
 3472              	# i:
 3473 07e0 3D78F025 		.long	636516413
 3474 07e4 1959E63F 		.long	1072060697
 3475              	# i:
 3476 07e8 23DEF5FB 		.long	-67772893
 3477 07ec 643D8C3C 		.long	1015823716
 3478              	# i:
 3479 07f0 AFA8EA54 		.long	1424664751
 3480 07f4 44E7E63F 		.long	1072097092
 3481              	# i:
 3482 07f8 6E224EC8 		.long	-934403474
 3483 07fc 03BC8DBC 		.long	-1131561981
 3484              	# i:
 3485 0800 CD3B7F66 		.long	1719614413
 3486 0804 9EA0E63F 		.long	1072079006
 3487              	# i:
 3488 0808 5664B213 		.long	330458198
 3489 080c 34DD8BBC 		.long	-1131684556
 3490              	# i:
 3491 0810 CD3B7F66 		.long	1719614413
 3492 0814 9EA0E63F 		.long	1072079006
 3493              	# i:
 3494 0818 5664B213 		.long	330458198
 3495 081c 34DD8BBC 		.long	-1131684556
 3496              		.align 4
 3499              	s3:
 3500              	# i:
 3501 0820 55555555 		.long	1431655765
 3502 0824 5555C5BF 		.long	-1077586603
 3503              		.align 4
 3506              	s5:
 3507              	# i:
 3508 0828 11111111 		.long	286331153
 3509 082c 1111813F 		.long	1065423121
 3510              		.align 4
 3513              	s7:
 3514              	# i:
 3515 0830 1AA0011A 		.long	436314138
 3516 0834 A0012ABF 		.long	-1087766112
 3517              		.align 4
 3520              	c2:
 3521              	# i:
 3522 0838 00000000 		.long	0
 3523 083c 0000E0BF 		.long	-1075838976
 3524              		.align 4
 3527              	c4:
 3528              	# i:
 3529 0840 55555555 		.long	1431655765
 3530 0844 5555A53F 		.long	1067799893
 3531              		.align 4
 3534              	c6:
 3535              	# i:
 3536 0848 176CC116 		.long	381774871
 3537 084c 6CC156BF 		.long	-1084833428
 3538              		.align 4
 3541              	c8:
 3542              	# i:
 3543 0850 1AA0011A 		.long	436314138
 3544 0854 A001FA3E 		.long	1056571808
 3545              		.align 4
 3548              	s9:
 3549              	# i:
 3550 0858 34C756A5 		.long	-1521039564
 3551 085c E31DC73E 		.long	1053236707
 3552              		.local	sah
 3553              		.comm	sah,8,8
 3554              		.local	sal
 3555              		.comm	sal,8,8
 3556              		.local	cah
 3557              		.comm	cah,8,8
 3558              		.local	cal
 3559              		.comm	cal,8,8
 3560              		.comm	crlibm_second_step_taken,4,4
 3561              		.section	.rodata.cst8,"aM",@progbits,8
 3562              		.align 8
 3563              	.LC4:
 3564 0000 00000002 		.long	33554432
 3565 0004 0000A041 		.long	1101004800
 3566              		.align 8
 3567              	.LC15:
 3568 0008 83C8C96D 		.long	1841940611
 3569 000c 305F5440 		.long	1079271216
 3570              		.align 8
 3571              	.LC17:
 3572 0010 182D4454 		.long	1413754136
 3573 0014 FB2189BF 		.long	-1081531909
 3574              		.section	.rodata.cst4,"aM",@progbits,4
 3575              		.align 4
 3576              	.LC19:
 3577 0000 0000C059 		.long	1505755136
 3578              		.section	.rodata.cst8
 3579              		.align 8
 3580              	.LC25:
 3581 0018 00000058 		.long	1476395008
 3582 001c FB2189BF 		.long	-1081531909
 3583              		.section	.rodata.cst4
 3584              		.align 4
 3585              	.LC26:
 3586 0004 BAF4EE2E 		.long	787412154
 3587              		.section	.rodata.cst8
 3588              		.align 8
 3589              	.LC29:
 3590 0020 075C1433 		.long	856972295
 3591 0024 26A621BC 		.long	-1138645466
 3592              		.align 8
 3593              	.LC31:
 3594 0028 00000030 		.long	805306368
 3595 002c 26A621BC 		.long	-1138645466
 3596              		.align 8
 3597              	.LC32:
 3598 0030 00000038 		.long	939524096
 3599 0034 E0A278BA 		.long	-1166499104
 3600              		.align 8
 3601              	.LC33:
 3602 0038 BC8FEDB7 		.long	3085799356
 3603 003c 7619AF38 		.long	950999414
 3604              		.align 8
 3605              	.LC34:
 3606 0040 00004054 		.long	1413480448
 3607 0044 FB2189BF 		.long	-1081531909
 3608              		.align 8
 3609              	.LC35:
 3610 0048 3163621A 		.long	442655537
 3611 004c 61B460BD 		.long	-1117735839
 3612              		.section	.rodata.cst4
 3613              		.align 4
 3614              	.LC36:
 3615 0008 D80F49BC 		.long	3158904792
 3616              		.align 4
 3617              	.LC37:
 3618 000c 608828B1 		.long	2972223584
 3619              		.section	.rodata.cst8
 3620              		.align 8
 3621              	.LC38:
 3622 0050 749D393B 		.long	993631604
 3623 0054 CB3DD73C 		.long	1020739019
 3624              		.align 8
 3625              	.LC39:
 3626 0058 749D393B 		.long	993631604
 3627 005c CB3DD7BC 		.long	-1126744629
 3628              		.section	.rodata.cst4
 3629              		.align 4
 3630              	.LC40:
 3631 0010 00000043 		.long	1124073472
 3632              		.align 4
 3633              	.LC41:
 3634 0014 0000003C 		.long	1006632960
 3635              		.section	.rodata.cst8
 3636              		.align 8
 3637              	.LC43:
 3638 0060 C4B12E6E 		.long	1848553924
 3639 0064 A301F03F 		.long	1072693667
 3640              		.align 8
 3641              	.LC44:
 3642 0068 AC8E1CE9 		.long	3910962860
 3643 006c 0C0CF03F 		.long	1072696332
 3644              		.align 8
 3645              	.LC48:
 3646 0070 4C8BFA24 		.long	620399436
 3647 0074 7718F03F 		.long	1072699511
 3648              		.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
 3649              	.globl __i686.get_pc_thunk.bx
 3650              		.hidden	__i686.get_pc_thunk.bx
 3652              	__i686.get_pc_thunk.bx:
 3653              	.LFB22:
 3654              		.cfi_startproc
 3655 0000 8B1C24   		movl	(%esp), %ebx	#,
 3656 0003 C3       		ret
 3657              		.cfi_endproc
 3658              	.LFE22:
 3659              		.text
 3660              	.Letext0:
