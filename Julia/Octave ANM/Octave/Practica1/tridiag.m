function T= tridiag(n,a,b,c)
  nOnes = ones(n, 1) ;
T = a*diag(nOnes(1:n-1), 1) +b*diag(a * nOnes, 0) + c*diag(nOnes(1:n-1), -1);