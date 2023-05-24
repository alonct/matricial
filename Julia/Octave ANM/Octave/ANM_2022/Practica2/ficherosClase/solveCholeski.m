## Copyright (C) 2022 Gines Gomariz
##
##Tiene como entrada una matriz simétrica definida positiva A y un vetor b
##y devuelva una matriz triangular inferior L que da la factorización de Choleski
##A = L Lt
##junto con la solución del sistema lineal Ax = b. Si A no es definida positiva lo 
##comprobaremos en la construcción de L y mandaremos un mensaje de error

## Created: 2022-02-18

function [L,x] = solveCholeski (A, b)
  
  for n=1:length(A(1,:))
    if det(A(1:n,1:n))<= 0
      error("Matriz no definida positiva")
    endif
  endfor
    
    [L,D,R] = LDRGauss(A);
    D2 = sqrt(D);
    
    LR = L*D2; 
    
    x = solveLU(LR,LR',b);
    
    x = x;
    L = LR;
  
endfunction
