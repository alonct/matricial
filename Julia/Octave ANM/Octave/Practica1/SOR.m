function [x, iter]=SOR(A,b,w,tol,MaxIter,x)
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
endif
if (abs(det(A)) < 1.e-12)
   error("A es singular")
endif
% nargin = argumentos de la funcion 
if (nargin==5) % falta x
     x=zeros(size(b));
endif
if (nargin==4)% falta x y MaxIter
    x=zeros(size(b));
    MaxIter=200;
endif
if (nargin==3) % falta x y MaxIter y tol
    x=zeros(size(b));
    MaxIter=200;
    tol=1.e-4;
endif
if (nargin==2)% falta x, MaxIter, tol y w
    x=zeros(size(b));
    MaxIter=200;
    tol=1.e-4;
    w=1;
endif
if (abs(w)< 1.e-12)
    error("w  = cero")
endif
%M=D/w-E =D/w+tril(A)-D=(1-w)*D/w+tril(A)
M=diag((1-w)*diag(A)/w)+tril(A);
N=M-A; 
B=inv(M)*N; 
if max(abs(eig(B))) > 1 
    rror("Radio espectral de la matriz de iteracion >1")
endif
% Inicializacion
iter=0;
r0=b-A*x;
r=r0;
% Iterations
while ((norm(r)>tol*norm(r0))&&(iter<MaxIter))
y=M\r;
z=A*y;
x=x+y; 
r=r-z; 
iter=iter+1;
endwhile
