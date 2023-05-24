#Generador de matrices no singulares de talla n

function A = NonsingularMat2(n)
%
% Creacion de una matriz no singular
%
A=rand(n,n);
A=A+eye(n)*norm(A,'Inf');
end