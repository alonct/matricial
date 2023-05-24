

disp('Ajustar datos (xj,yj) usando y=x/(a+bx)')
disp('Invirtiendo los datos zj=1/yj ajustamos (xj,zj) a la curva z=b+a*(1/x)')
disp('Reescribimos el ajuste usando (xj,yj) junto a yj=xj/(a+bxj)')
%
% Datos 
%
x=[20,21.3,21.9,30.6,32.2,33.3];
y=[1.0152,1.027,1.032,1.0859,1.0922,1.0976];
%Numero de datos
n=size(x,2);
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
disp([' alpha = ',num2str(alpha),' beta = ',num2str(beta)])
% ##definamos la funcion y con los valores encontrados
yqr=x./(alpha+beta*x);
subplot(2,1,2)
plot(x,y,'*',x,yqr,'d')
legend("datos","aprox",'Location', 'best');
title("Minimos cuadrados usando QR")
