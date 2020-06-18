#define DIM 2
#define QN 9
#define QN_IN_DIM 36   // QN*2^DIM
constexpr const int3 _e[QN] = {
  /* 0 */ { 0, 0, 0}, 
  /* 1 */ { 1, 0, 0}, 
  /* 2 */ { 0, 1, 0}, 
  /* 3 */ { 1, 1, 0}, 
  /* 4 */ {-1, 0, 0}, 
  /* 5 */ {-1, 1, 0}, 
  /* 6 */ { 0,-1, 0}, 
  /* 7 */ { 1,-1, 0},
  /* 8 */ {-1,-1, 0}
};
const ftype W0=0.5;
const ftype W1=0.125;
const ftype W2=0;
const ftype W3=0;

const ftype cs2 = dx*dx/3.;


//#define NON_ISOTHERMAL_RELAXATION

#define WEIGHTS_MANUALLY
constexpr ftype _w[QN] = {
  W0, W1,W1,W1,W1,W1,W1,W1,W1
};
