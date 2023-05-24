function X=solveQR(Q,R,b)
  B=Q'*b;
  X=solveU(R,B);