## Copyright (C) 2022 Gines Gomariz
##
##Algoritmo de Gram Schmidt
## Created: 2022-02-22

function [Q,R] = gramschmidt(A)
[m,n] = size(A);
Q = A; R = zeros(n);


for k = 1:n
R(1:k-1,k) = Q(:,1:k-1)'*A(:,k);
Q(:,k) = A(:,k) - Q(:,1:k-1)*R(1:k-1,k);
R(k,k) = norm(Q(:,k));
Q(:,k) = Q(:,k)/R(k,k);
endfor

endfunction

#Falta ver su complejidad computacional.