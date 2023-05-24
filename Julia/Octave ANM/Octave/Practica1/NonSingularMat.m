function A=NonsingularMat(n)
  A=rand(n);
  while(rank(A)<n)
  A=rand(n);
endwhile