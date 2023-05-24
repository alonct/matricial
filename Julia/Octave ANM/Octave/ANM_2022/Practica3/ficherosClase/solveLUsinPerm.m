## Copyright (C) 2022 Gines Gomariz
##
##Resuelve una ecuacion utilizando el metodo LUGaussSinPerm
##Obtiene la matriz A y la b
## Created: 2022-02-07

function [L,U,sol] = solveLUsinPerm (A, b)

[L,U] = LUGaussSinPerm(A);

#Obtenida la descomposicion LU:
#Ax = LUx = b
  sol = solveU(U,solveL(L,b));
  
endfunction
