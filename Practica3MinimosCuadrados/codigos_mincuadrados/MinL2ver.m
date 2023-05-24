

eps=1.e-5;
P=[1 1 0;0 1 -1;1 0 -1];
A=P*diag([eps,1,1/eps])*inv(P);
cond(A)
b=ones(3,1);

figure(1);
plot(x,y,'*');
title("Datos a interpolar")
pause(1);
%
% Transformacion de los datos y construccion de la matriz
%
b=1./y';
A=[ones(n,1),1./x'];

pause(1);
% Resolvemos usando Choleski
Apb=A'*b;
B=chol(A'*A);
y1=B'\Apb;
x1=B\y1;
alpha=x1(2);
beta=x1(1);
ychol=x./(alpha+beta*x);
figure(2);
subplot(2,1,1)
plot(x,y,'*',x,ychol,'d')
legend("datos","aprox",'Location', 'best');
title("Minimos cuadrados usando Choleski")
pause(1);
% Resolvemos usando QR
[nA,p]=size(A);
[Q,R]=qr(A);
c=Q'*b;
solucion=R(1:p,1:p)\c(1:p);
alpha=solucion(2);
beta=solucion(1);
% ##definamos la funcion y con los valores encontrados
yqr=x./(alpha+beta*x);
subplot(2,1,2)
plot(x,y,'*',x,yqr,'d')
legend("datos","aprox",'Location', 'best');
title("Minimos cuadrados usando QR")
