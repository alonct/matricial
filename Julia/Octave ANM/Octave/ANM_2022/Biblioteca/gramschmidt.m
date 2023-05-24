## Copyright (C) 2022 Gines Gomariz
##
##Algoritmo de Gram Schmidt
## Created: 2022-02-22

function [Q,R, productos] = gramschmidt(A)
[m,n] = size(A);
Q = A; R = zeros(n);
productos = 0; 

for k = 1:n
R(1:k-1,k) = Q(:,1:k-1)'*A(:,k);
productos = productos;
Q(:,k) = A(:,k) - Q(:,1:k-1)*R(1:k-1,k);
productos = productos;
R(k,k) = norm(Q(:,k));
productos = productos + k+1;
Q(:,k) = Q(:,k)/R(k,k);
endfor

endfunction

#Falta ver su complejidad computacional.