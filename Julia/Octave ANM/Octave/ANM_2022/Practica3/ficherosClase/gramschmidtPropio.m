## Copyright (C) 2022 Gines Gomariz
##
##Algoritmo de gramschmidt hecho por mi.
##
##A es la matriz con los vectores de la base (los de las columnas)

## Created: 2022-02-22

function [B,op] = gramschmidtPropio (A)
   
   [m,n] = size(A);
   r = rank(A);
   op = 0;
   
   B = zeros(m,r);
   
   for p=1:n
    s=0;
     for k=1:p-1
        s = s + A(:,p)'*B(:,k)*B(:,k); # Sumamos las cantidades siguientes
        op = op + 2*m;
     endfor
     s = A(:,p) - s;
    if s'*s != 0 
      norma = sqrt(s'*s);
      op = op + (m+1+m);
      B(:,p)=s/(norma);
    else
      B(:,p)=0;
    endif 
endfor
    B = B;
endfunction
