## Copyright (C) 2022 Gines Gpomariz
##
##Dado un natural n, devuelve una matriz invertible con determinante 
##no nulo
## Created: 2022-02-01

function retval = NonsingularMat (n)
  A = rand(n,n);
  while determinante(A) >= 10^(-4) # para evitar overfloat de maquina 
    A = rand(n,n);
  endwhile
  retval = A;
  # B = A+eye(n,n)*norm(A,'inf'); HECHO EN CLASE
endfunction

