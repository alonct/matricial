function [x, iter, r]=verGaussSeidel(A,b,tol,MaxIter,x)
  % Computa la aproximacion a Ax=b por el metodo de 
  % Gauss-Seidel
  % tol = criterio de parada sobre el residuo
  % MaxIter = numero maximo de iteraciones
  % x=x0 Valor inicial
  [m,n]=size(A);
  if (m~=n)
     error("la matriz no es cuadrada")
  end
  if (abs(det(A)) < 1.e-12)
  error("la matriz es singular") 
  end
  D=diag(A);
  if min(abs(D)) <1.E-12
  error("Gauss-Seidel no se puede aplicar, ceros en la diag.")
  end
  M=tril(A);
  N=M-A; 
  B=inv(M)*N; 
  if (max(abs(eig(B))) > 1)
      error("Radio espectral de la matriz de iteracion >1")
  end
  %
  % nargin = numero de argumentos de la funcion
  % nargin =5 quiere decir que se han introducido todos
  %        
  if (nargin==4)  %falta x0
      x=zeros(size(b));
  end
  if (nargin==3) %falta x0 y MaxIter
      x=zeros(size(b));
      MaxIter=200;
  end
  if (nargin==2) %falta x0, MaxIter y tol
      x=zeros(size(b));
      MaxIter=200;
      tol=1.e-4;
  end 
  M=tril(A);
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
endfunction