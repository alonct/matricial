## Copyright (C) 2022 Gines Gomariz
##
##Dado un valor n natural, esta funcion devuelve una matriz
##cuadrada de tamaño n*n triangular inferior no singular

## Created: 2022-02-01


function retval = LowNonsingularMat (n)
  A = rand(n,n);
  L = tril(A);
  while(determinante(L) >= 10^(-4))
   A = rand(n,n);
   L = tril(A);
  endwhile
  
  retval = L;

endfunction
