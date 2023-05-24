# Esta función crea matrices no singulares y triangulares superiores aleatorias dado un entero n


function A = UpNonsingularMat(n)
  A = NonsingularMat(n);
  A = triu(A);
endfunction