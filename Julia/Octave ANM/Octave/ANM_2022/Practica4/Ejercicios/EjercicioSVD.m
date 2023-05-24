#EjercicioSVD

clc
clear all
close all
addpath('./ficherosClase')

clear all;
n=10;
A=vander(n);
[U,S,V]=svd(A)
figure(1)
semilogy(1:n,diag(S),'*r')
title('Valores singulares')

pause
clc
 
for r=1:n
  Ua=U(1:n,1:r);
  Va=V(1:n,1:r);
  Sa=S(1:r,1:r);
  B=Ua*Sa*Va';
  E=(B-A)./A;
  e=norm(E,inf);
  disp([" r= ",num2str(r)," max error relativo= ",num2str(e)])
end