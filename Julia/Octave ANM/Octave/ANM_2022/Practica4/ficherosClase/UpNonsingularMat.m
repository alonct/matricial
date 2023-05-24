## Copyright (C) 2022 Gines Gomariz
##
##Dado un valor n natural, esta funcion devuelve una matriz
##cuadrada de tamaño n*n triangular superior no singular

## Created: 2022-02-01

function retval = UpNonsingularMat (n)
  A = rand(n,n);
  U = tril(A)'; # Traspuesta de una triangular inferior
  while(determinante(U) >= 10^(-4))
   A = rand(n,n);
   U = tril(A)';
  endwhile
  
  retval = U;
endfunction
