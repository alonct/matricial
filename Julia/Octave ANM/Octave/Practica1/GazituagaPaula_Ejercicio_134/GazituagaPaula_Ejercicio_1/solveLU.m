function X=solveLU(L,U,b)
  B=inv(L)*b;
  X=solveU(U,B);