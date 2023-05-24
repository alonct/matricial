clc
clear all
close all
addpath('./Biblioteca')

##n=15;
##A=hilb(n);
##[U,S,V]=svd(A);
##for r=1:n
##  Ua=U(1:n,1:r);
##  Va=V(1:n,1:r);
##  Sa=S(1:r,1:r);
##  B=Ua*Sa*Va';
##  E=(B-A)./A;
##  e=norm(E,inf);
##  disp([" r= ",num2str(r)," max error relativo= ",num2str(e)])
##endfor



deg=1:5: 360;
circ = zeros(2, size(deg,2));
circ(1, :) = cos(deg *pi / 180);
circ(2, :) = sin(deg * pi / 180);
plot(circ(1,:),circ(2,:))
A=[1,1;-1,-2];
[U, S, V]=svd(A);
Acirc = A*circ;
Uline = [ U(:,1)*S(1,1) [ 0 0 ]*U(:,2)*S(2,2) ];
figure;
plot(circ(1, :), circ(2, :), 'o',...
     Acirc(1, :), Acirc(2, :), '+',...
     Uline(1, :), Uline(2, :), '-r');
     legend("Disco 1", "A*D", "Lineas U");
axis equal;