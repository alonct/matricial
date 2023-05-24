function A=LowNonSingularMat(n)
  A=triangSupRandom(n);
  A= A';
  while(rank(A)<n)
  A=triangSupRandom;
  A=A';
  endwhile