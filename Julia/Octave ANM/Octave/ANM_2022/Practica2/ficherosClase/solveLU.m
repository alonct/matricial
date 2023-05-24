## Copyright (C) 2022 Gines Gomariz
##
##Resuelve un sistema usando el metodo LU.
##Esto se debe usar una vez obtenidas la matriz A como LU
## Created: 2022-02-07

function X = solveLU (L, U, b)
[m,n]=size(L);
[p,c]=size(U);
[q,r]=size(b);
%Numero de columnas de L debe ser igual al numero de filas de U
  if p~=n
    error('Dimensiones incompatibles de L y U.');
  end
  %Numero de columnas de L debe ser igual al numero de filas de b
  if q~=n
    error('Dimensiones incompatibles de L y b.');
  end
    X = solveU(U, solveL(L,b));
end
