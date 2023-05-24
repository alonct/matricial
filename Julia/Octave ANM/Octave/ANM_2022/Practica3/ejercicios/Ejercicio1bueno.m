#Ejercicio 1 resuelto:
clc
clear all

# Ejercicio 1

A = hilb(25);
A = A(:,1:7)
xexacta = ones(7,1);
b = A*xexacta;

%%
%% Comparamos la resolucion de un problema de 
%% minimos cuadrados usando Choleski, Qr y SVD
%% sobre una matriz mal condicionada
%%
%% Aplicamos Choleski
%%
tic;
Apb=A'*b;
B=chol(A'*A);
y1=B'\Apb;
x1=B\y1;
t1=toc;
%%
%% Aplicamos QR
%%
tic;
[nA,p]=size(A);
[Q,R]=qr(A);
c=Q'*b;
x2=R(1:p,1:p)\c(1:p);
t2=toc;
%%
%% Aplicamos SVD
%%
tic;
[nA,p]=size(A);
[U,S,V]=svd(A);
u=U'*b;
x3=V(u(1:p)./diag(S));
t3=toc;
fprintf('Tiempo con Choleski\n');
t1
fprintf('Tiempo con QR\n');
t2
fprintf('Tiempo con SVD\n');
t3
fprintf('solucion con Choleski\n');
norm(Ax1-b)
fprintf('solucion con QR\n');
norm(Ax2-b)
fprintf('solucion con SVD\n');
norm(Ax3-b)
fprintf('Norma entre solucion Choleski vs exacta\n');
norm(x1-xexacta)
fprintf('Norma entre solucion QR vs exacta\n');
norm(x2-xexacta)
fprintf('Norma entre solucion SVD vs exacta\n');
norm(x3-xexacta)
fprintf('Cond A\n');
cond(A)
fprintf('Cond A^tA\n');
cond(A'*A)
figure();
plot(1:p,xexacta,'o',1:p,x1,'-d',1:p,x2,'+',1:p,x3,'*')