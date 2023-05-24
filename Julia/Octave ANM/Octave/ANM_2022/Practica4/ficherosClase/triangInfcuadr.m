## Copyright (C) 2022 Gines Gomariz
##
##Escribe una función de
##Octave/MATLAB que proporcione T matriz triangular inferior con 1 en diagonal
##tal que T
##2 = L. L es nuestra matriz diagonal que tenemos en principio
##
##Una vez visto el algoritmo, se trata de calcularla
## Created: 2022-02-07

function retval = triangInfcuadr (L)
  
  [n,m] = size(L);
  D = eye(n);
  
    for j=n-1:-1:1
       D(j+1,j) = L(j+1,j)/2;
    endfor
    
    for j=n-2:-1:1
     for i=1:j
       D(i+(n-j),i) = L(i+(n-j),i)/2 - (D(i+(n-j),:)*diag([0;ones(n-2,1);0])*D(:,i))/2;
     endfor
    endfor 
    
    
  retval = D;
endfunction
