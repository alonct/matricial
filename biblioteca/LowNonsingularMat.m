function L = LowNonsingularMat(n)

  A = rand(n,n);
  Id = eye(n,n);
  A = A + Id * norm(A, Inf);
  A = tril(A);
  L = A;

  endfunction
