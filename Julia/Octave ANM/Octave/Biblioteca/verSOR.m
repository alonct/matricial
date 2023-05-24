function [x, iter,r]=verSOR(A,b,w,tol,MaxIter,x)
% Calcula usando SOR la solucion de Ax=b
% w = parametro de relajacion
% tol = ? criterio de parada
%
% MaxIter =maximo numero de iteraciones
%
% x=x0 vector inicial
%
[m,n]=size(A);
if (m~=n) 
    error("A no es cuadrada")
end
if (abs(det(A)) < 1.e-12)
   error("A es singular")
end
if (abs(w)< 1.e-12)
    error("w  = cero")
end
% nargin = argumentos de la funcion 
if (nargin==5) % falta x
     x=zeros(size(b));
end
if (nargin==4)% falta x y MaxIter
    x=zeros(size(b));
    MaxIter=200;
end
if (nargin==3) % falta x y MaxIter y tol
    x=zeros(size(b));
    MaxIter=200;
    tol=1.e-4;
end
if (nargin==2)% falta x, MaxIter, tol y w
    x=zeros(size(b));
    MaxIter=200;
    tol=1.e-4;
    w=1;
end
%M=D/w-E =D/w+tril(A)-D=(1-w)*D/w+tril(A)
M=diag((1-w)*diag(A)/w)+tril(A);
N=M-A; 
B=inv(M)*N; 
if max(abs(eig(B))) > 1 
    rror("Radio espectral de la matriz de iteracion >1")
end
% Inicializacion
res=zeros(MaxIter,1);
iter=0;
r0=b-A*x;
r0norm=norm(r0);
rold=r0;
res(iter+1)=r0norm;
rnorm=r0norm;
% Iteraciones
while ((rnorm>tol*r0norm)&&(iter<MaxIter))
y=M\rold;
z=A*y;
x=x+y; 
rold=rold-z; 
iter=iter+1;
rnorm=norm(rold);
res(iter+1)=rnorm;
end
r=res;
