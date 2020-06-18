#define SEMI_LAGRANGIAN
#define DIM 2
#define QN 25
#define QN_IN_DIM 100   // QN*2^DIM
constexpr const ftype TLat=1;
const ftype Dim=2;
const ftype Tmin=0;
const ftype Tmax=TLat*10;

const ftype ec1=1.3556261799742657;
const ftype ec2=2.8569700138728056;
const ftype ec1d=ec1*ec1;
const ftype ec2d=ec2*ec2;
constexpr const ftype3 _ef[QN] = {
  {0   , 0   , 0 }, {0   , +ec1, 0 }, {0   , -ec1, 0 }, {0   , +ec2, 0 }, {0   , -ec2, 0 },
  {+ec1, 0   , 0 }, {+ec1, +ec1, 0 }, {+ec1, -ec1, 0 }, {+ec1, +ec2, 0 }, {+ec1, -ec2, 0 },
  {-ec1, 0   , 0 }, {-ec1, +ec1, 0 }, {-ec1, -ec1, 0 }, {-ec1, +ec2, 0 }, {-ec1, -ec2, 0 },
  {+ec2, 0   , 0 }, {+ec2, +ec1, 0 }, {+ec2, -ec1, 0 }, {+ec2, +ec2, 0 }, {+ec2, -ec2, 0 },
  {-ec2, 0   , 0 }, {-ec2, +ec1, 0 }, {-ec2, -ec1, 0 }, {-ec2, +ec2, 0 }, {-ec2, -ec2, 0 },
};
constexpr const ftype cs2 = TLat;
const ftype W0=(3*TLat*TLat-(ec1d+ec2d)*TLat+ec1d*ec2d)/(ec1d*ec2d);
const ftype W1=TLat*(ec2d-3*TLat)/(2*ec1d*(ec2d-ec1d));
const ftype W2=TLat*(ec1d-3*TLat)/(2*ec2d*(ec1d-ec2d));
constexpr ftype _w[QN] = {
  W0*W0, W0*W1, W0*W1, W0*W2, W0*W2,
  W1*W0, W1*W1, W1*W1, W1*W2, W1*W2,
  W1*W0, W1*W1, W1*W1, W1*W2, W1*W2,
  W2*W0, W2*W1, W2*W1, W2*W2, W2*W2,
  W2*W0, W2*W1, W2*W1, W2*W2, W2*W2
};

constexpr const int3 _MomentsPower[QN] = {
  {0,0,0},{1,0,0},{2,0,0},{3,0,0},{4,0,0},
  {0,1,0},{1,1,0},{2,1,0},{3,1,0},{4,1,0},
  {0,2,0},{1,2,0},{2,2,0},{3,2,0},{4,2,0},
  {0,3,0},{1,3,0},{2,3,0},{3,3,0},{4,3,0},
  {0,4,0},{1,4,0},{2,4,0},{3,4,0},{4,4,0},
};

HOST_DEV_CHOOSE const int3 MomentsPower[QN] = { SEQ_LIST_COLLECTION(_MomentsPower,QN) };
HOST_DEV_CHOOSE const ftype3 ef[QN] = { SEQ_LIST_COLLECTION(_ef,QN) };
HOST_DEV_CHOOSE const int3 e[QN] = {0};


