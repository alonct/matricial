## Copyright (C) 2022 USUARIO
##
##Algoritmo Gram Schmidt modificado
## Created: 2022-02-22

function retval = modgramschmidt (input1, input2)

function [Q,R] = modgramschmidt(A)
  [m,n] = size(A);
  Q = A; R=zeros(n);
  for k = 1:n
    R(k,k) = norm(Q(:,k));
    Q(:,k) = Q(:,k)/R(k,k);
    R(k,k+1:n) = Q(:,k)'*Q(:,k+1:n);
    Q(:,k+1:n) = Q(:,k+1:n) - Q(:,k)*R(k,k+1:n);
  end


endfunction
