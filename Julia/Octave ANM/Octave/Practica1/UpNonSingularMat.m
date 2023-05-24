function A=UpNonSingularMat(n)
  A=triangSupRandom(n);
  while(rank(A)<n)
  A=triangSupRandom;
  endwhile