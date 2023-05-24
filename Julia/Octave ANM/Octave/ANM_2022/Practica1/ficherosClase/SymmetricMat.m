## Copyright (C) 2022 Gines Gomariz
##
## Dado un valor n natural, esta funcion devuelve una matriz simetrica 
## cuadrada de tamaño n*n generada de manera aleatoria
## Created: 2022-02-01

function retval = SymmetricMat (n)

 A = rand(n,n);
 L = tril(A);
 retval = 0.5*(L+L');
 
endfunction
