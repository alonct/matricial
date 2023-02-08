function res = SymmetricMat(n)

  A = rand(n, n);
  A = 0.5*(A + A');

  res = A;

  endfunction
