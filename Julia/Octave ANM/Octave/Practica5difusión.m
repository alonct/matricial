clear all;
%
% problema de difusion homogeneo
%
format short;
%
% MATLAB indexa desde 1 los vectores
%
% Dimension de la particion M+1 xe(1),xe(2),...,xe(M+2) donde 
%   xe(1)=xIni, xe(M+2)=xFin y los nodos intermedios 
%   son xe(2),xe(3),...,xe(M+1)
%
M=2000;
 
xIni = 0.0;
xFin =1.0;
h = (xFin - xIni)/(M+1);
%
% Talla de xe es 1x(M+2)
%
xe =xIni:h:xFin; % particion talla h, total de M+2 puntos

h2=h*h;
hr=sqrt(h);
%
% tiempo incial
%
tiempo=0.0;
%
% Valor inicial. 
% u0 array solucion en el paso de tiempo t^n
%
% Talla de u0 es 1x(M+2)
%
ux=exp(-pi^2*tiempo)*sin(pi*xe); 
u0=ux;
%
% Coeficiente de difusion
%
k=1;
%
% u1 array solucion en el paso de tiempo t^{n+1}
%
u1 = zeros(1,M+2); 
%
% Tiempo final
%
T=0.2;
Nt=80;
%
% paso de tiempo dt 
%
dt=T/Nt;
mu=k*dt/h2;
%
%    Diagonales de la matriz
%
c = -mu*ones(M,1);  % de 1 a M-1
b = (1+2.0*mu)*ones(M,1);  % de 1 a M
a = -mu*ones(M,1);  % de 2 a M
[al,bu]=thomasLUfact(a,b,c);
x=zeros(M,1);
y=zeros(M,1);
%    
% Construccion del sistema MxM
%
cm = -mu*ones(M-1,1);  % d-1 valores indexados de 1 a M-1
bm = (1+2.0*mu)*ones(M,1);  % d valores indexados de 1 a M
am = -mu*ones(M-1,1);  % d-1 valores indexados de 1 a M-1
%%
%% Construimos matriz a partir de las diagonales principales
%%
Pim=diag(am, -1)+diag(bm, 0)+diag(cm, 1);
%%
%% termino independiente
%%
d=zeros(M,1);
%
% Dato inicial
%
plot(xe,u0,'-');
title(['Aprox con M = ',num2str(M),' tiempo ',num2str(tiempo)]);
%%
% iteracion temporal
% 
for nt=1:Nt
 %
 % Avanzamos en nivel de tiempo
 %
 tiempo=nt*dt;
%
%construccion termino independiente
%
% Asignacion de datos al termino independendiente del sistema Ay=b
    for j=1:M   
        d(j)=u0(j+1);
    end
%
%Resolucion con LU
%
% Resolvemos bajada
%
tic
y(1)=d(1);
for i=2:M
y(i)=d(i)-al(i)*y(i-1);
end
%
% Resolvemos subida
%
x(M)=y(M)/bu(M);
for i=M-1:-1:1
x(i)=(y(i)-c(i)*x(i+1))/bu(i);
end
tt=toc;
disp(['Thomas LU  tiempo= ',num2str(tt)]);
%
% Resolucion sistema lineal
%
tic
z = Pim\d;
tm=toc;
disp(['MATLAB \ tiempo= ',num2str(tm)]);
disp(['MATLAB vs Thomas ',num2str(max(abs(x-z)))]);
disp('----------------------------- ');
%
% insertamos la solucion dentro del rango de 1 a M
%
for j=1:M
  u1(j+1)=x(j);
end
% Asignacion de los datos de contorno en x=xIni y en x=xFin
u1(1)=0.0; 
u1(M+2)=0.0; 


%
%u exacta
%
ux=exp(-pi^2*tiempo)*sin(pi*xe);

%
% Dibujamos la solucion exacta y la aproximada
%
figure(1);
plot(xe,u1,'.',xe,ux,'-')
legend('aprox','true');
title(['Aprox con M = ',num2str(M),...
      ' kappa = ',num2str(k),...
      ' tiempo = ',num2str(tiempo)]);
 
axis([0 1 0 1]);
pause(.01);
%
%actualizamos
%
  for j=1:M+2
   u0(j)=u1(j);
  end
 
end
err=max(abs(exp(-pi^2*tiempo)*sin(pi*xe)-u1));
err=err/max(abs(exp(-pi^2*tiempo)*sin(pi*xe)));
disp(['Error en tiempo final= ',num2str(err)]);