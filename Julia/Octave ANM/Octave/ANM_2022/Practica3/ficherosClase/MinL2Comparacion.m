function [x1, x2, x3] = MinL2Comparacion(A, b)
%%
%% Comparamos la resolucion de un problema de
%% minimos cuadrados usando Choleski, QR y SVD
%%
%% Aplicamos Choleski
%%

tic;
Apb=A'*b;
B=chol(A'*A);
y1=B'\Apb;
display("Con Choleski")
x1=B\y1
t1=toc;
%%
%% Aplicamos QR
%%
tic;
[nA,p]=size(A);
[Q,R]=qr(A);
c=Q'*b;
display("Con QR")
x2=R(1:p,1:p)\c(1:p)
t2=toc;
%%
%% Aplicamos SVD
%%
tic;
[nA,p]=size(A);
[U,S,V]=svd(A);
u=U'*b;
display("Con SVD")
x3=V*(u(1:p)./diag(S))
t3=toc;
fprintf('Tiempo con Choleski\n');
t1
fprintf('Tiempo con QR\n');
t2
fprintf('Tiempo con SVD\n');
t3
fprintf('solucion con Choleski\n');
norm(A*x1-b)
fprintf('solucion con QR\n');
norm(A*x2-b)
fprintf('solucion con SVD\n');
norm(A*x3-b)
fprintf('Norma entre solucion Choleski vs QR\n');
norm(x1-x2)
fprintf('Norma entre solucion QR vs SVD\n');
norm(x2-x3)
fprintf('Norma entre solucion SVD vs Choleski\n');
norm(x1-x3)
fprintf('Cond A\n');
cond(A)
fprintf('Cond A^t*A\n');
cond(A'*A)
