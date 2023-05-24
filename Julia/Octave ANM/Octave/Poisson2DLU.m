% 
% Programa principal para aproximar la ecuacion
% - laplace u = f en 2D

close all

%Parametros de entrada
n=20; % puntos interiores en cada direccion.

f_cte = 1; % Valor constante de f


h = 1/(n+1); % paso de longitud

% ----------------------------------------
% Calculo matrices y vectores
% ----------------------------------------
% Genera la matriz n*n by n*n
%
S = DiscretePoisson2D(n);

% factorizamos A using LU decomposition with pivoting

[L,U,P]=LU_PP(S);

%
% como f es constante.
%
 f = f_cte*ones(n^2,1);
% ----------------------------------------
% Resolvemos el sistema linear  de ecuaciones 
% usando eliminacion de Gauss
% ----------------------------------------
% Sistema A u =f, es decir, 1/h^2 L U u = f

% 1. Calculamos b dado por b(i,j)=f(i,j)

b=zeros(n^2,1);
for i=1:n
  for j=1:n
    b(n*(i-1)+j)=f(n*(i-1)+j); 
  end
end

% 2. Calculamos v = L^(-1)*b por sustitucion progresiva.

v=ForwSub(L,P*b);

% 3. Calculamos w = U^(-1)*v por sustitucion regresiva 

w=BackSub(U,v);

% Compute finally solution as:  u=h^2*w
u=h^2*w;

% ----------------------------------------
% Plots and figures.
% ----------------------------------------

% ordenamos los datos de u en la parrilla, datos de contorno cero.

Z = zeros(n+2,n+2);
for i=1:n
  for j=1:n
    Z(i+1,j+1) = u(j+n*(i-1));
  end
end

%% plotting
x1=0:h:1;
y1=0:h:1;

figure(1)
surf(x1,y1,Z) % same plot as above, (x1, y1 are vectors)
view(2)
colorbar
xlabel('x_1')
ylabel('x_2')
zlabel('u(x_1,x_2)')
title( ['u(x_1,x_2) with N = ',num2str(n)])

figure(2)
surf(x1,y1,Z) % same plot as above
colorbar
xlabel('x_1')
ylabel('x_2')
zlabel('u(x_1,x_2)')
title( ['u(x_1,x_2) with N = ',num2str(n)])



