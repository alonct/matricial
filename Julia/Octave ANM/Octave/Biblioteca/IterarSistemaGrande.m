%
%...............ejemploSistemaGrande.m
%
% Resolvemos un sistema grande que proviene de
% la discretizacion de -u''(x)=f(x) para x en (0,1)
% 
% la matriz es A=diag(-1,2,-1) de talla nxn
%
%% f(x)=x(x-1)<0
%% u(x)=-(x^4-2x^3+x)/12
%%  -u''=f

clear
clc

N=50;

fprintf('\n Sistema NxN N= %d \n',N);

xInit=0;
xFin=1;
dx=(xFin-xInit)/(N+1);
dx2=dx*dx;
x=xInit:dx:xFin;
f=x.*(x-1);
xexacta=-(x.^4-2*x.^3+x)/12;
b=zeros(N,1);
%
% Indices comienzan en 1
%
for i=1:N
    b(i)=f(i+1);
end
b=dx2*b;
fprintf('\n Tiempo construir la matriz : ');
tic
A=zeros(N,N);
A(1,2)=-1;
A(1,1)=2;
for i=2:N-1
A(i,i)=2;
A(i,i+1)=-1;
A(i,i-1)=-1;
end
A(N,N)=2;
A(N,N-1)=-1;

toc


tol=1e-5;
MaxIter=4000;

rJ=zeros(MaxIter,1);
rGS=zeros(MaxIter,1);
rSOR=zeros(MaxIter,1);
uJ=zeros(N,1);
uJtotal=zeros(N+2,1);
uGS=zeros(N,1);
uGStotal=zeros(N+2,1);
uSOR=zeros(N,1);
uSORtotal=zeros(N+2,1);
u0=zeros(N,1);
tic;
size(uJ)
[uJ,iter,rJ]=verJacobi(A,b,tol,MaxIter,u0);
uJtotal(2:N+1,1)=uJ;
tjac=toc;

itersJ=1:iter+1;

fprintf('\n Tiempo solucion con Jacobi : %d \n', tjac);

tic;
[uGS,iter,rGS]=verGaussSeidel(A,b,tol,MaxIter,u0);
tGS=toc;
itersGS=1:iter+1;
uGStotal(2:N+1)=uGS;
fprintf('\n Tiempo solucion con Gauss-Seidel : %d \n', tGS);
w=2/(1+sin(pi/N));
tic;
[uSOR,iter,rSOR]=verSOR(A,b,w,tol,MaxIter,u0);
tSOR=toc;
itersSOR=1:iter+1;
uSORtotal(2:N+1)=uSOR;
%
% Soluciones
%
figure;
subplot(2,1,1);
plot(x,uJtotal,'x',x,uGStotal,'o',x,uSORtotal,'d',x,xexacta,'-');
title(['Solucion Jacobi, GaussSeidel y SOR, N= ',num2str(N),' w = ',num2str(w)]);
legend('Jac','GS','SOR','Exacta');
fprintf('\n Tiempo solucion con SOR : %d \n', tSOR);
subplot(2,1,2);
semilogy(itersJ',rJ(itersJ),'*',itersGS',rGS(itersGS),'+',itersSOR',rSOR(itersSOR),'d');
legend('Jac','GS','SOR');
title(['Iteraciones Jacobi, GaussSeidel y SOR, N= ',num2str(N),' w = ',num2str(w)]);
