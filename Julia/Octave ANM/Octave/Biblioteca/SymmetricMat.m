# Esta funci�n crea matrices sim�tricas aleatorias dado un entero n


function A = SymmetricMat(n)
  A = rand(n, n);
  A = tril(A);
  A = A + A';
endfunction