function res = NonsingularMat(n)
  A = rand(n,n);
  Id = eye(n,n);
  res = A + Id * norm(A, Inf);
  endfunction
