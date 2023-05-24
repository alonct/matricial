# Esta función crea matrices no singulares y triangulares inferiores aleatorias dado un entero n


function A = LowNonsingularMat(n)
  A = NonsingularMat(n);
  A = tril(A);
endfunction