%
% Ejemplo de uso de la regla de Cramer
% Usamos el ejemplo clasico de R.S.Wilson
% Ver Infante-Rey pag 37 por ejemplo.
%
clear all;

b=[32,23,33,31];
b


A=[10,7,8,7;
   7,5,6,5;
   8,6,10,9;
   7,5,9,10];
A
fprintf('\n Solucion Cramer \n \n');
tic;
x=solveCramer(A,b);
toc;

fprintf('solucion x');
x
res=b'- A*x';

fprintf('norma residual || b-Ax|| = %d',norm(res));

fprintf(' \n');

fprintf('\n Solucion Octave/Matlab \n \n');
tic;
xC= A\b';
toc;
x=xC';
fprintf('solucion x');
x
res=b'- A*x';

fprintf('norma residual || b-A*x|| = %d',norm(res));

fprintf(' \n');

 % Perturbacion en termino independiente
 fprintf('\n *** Perturbacion en termino independiente b1(i)= b(i)+/- epsilon \n ');
 epsilon=0.1;
 b1=[32+epsilon,22-epsilon,33+epsilon,30-epsilon];
 fprintf('b1');
 b1
 
 fprintf('\n Solucion Cramer \n \n');
 tic;
 x1=solveCramer(A,b1);
 toc;
 
 fprintf('solucion x1');
 x1
 res1=b1'- A*x1';
 
 fprintf('norma residual || b1-A*x1|| = %d',norm(res1));

 fprintf(' \n');
 
 fprintf('\n Solucion Octave/Matlab \n \n');
 tic;
 x1C= A\b1';
 toc;
 x1=x1C';
 fprintf('solucion x1');
 x1
 res1=b1'- A*x1';
 
 fprintf('norma residual || b1-A*x1|| = %d',norm(res1));
 %norm(res1)
 fprintf(' \n');
 
  % Perturbacion en matriz
 fprintf('\n *** Perturbacion en matriz A, A1=A+DeltaA \n');
  
  DeltaA=[0,0,0.1,0.2;0.08,0.04,0,0;0,-0.02,-0.11,0;-0.01,-0.01,0,-0.02];
  A1=A+DeltaA;
  fprintf('A1');
  A1
  
  fprintf('\n Solucion Cramer \n \n');
  tic;
  x2=solveCramer(A1,b);
  toc;
  
  fprintf('solucion x2');
  x2
  res2=b'- A1*x2';
  
  fprintf('norma residual || b-A1 x2|| = %d',norm(res2));
  
  fprintf(' \n');
  
  fprintf('\n Solucion Octave/Matlab \n \n');
  tic;
  x2C= A1\b';
  toc;
  x2=x2C';
  fprintf('solucion x2');
  x2
  res=b'- A1*x2';
  
  fprintf('norma residual || b-A1*x2|| = %d',norm(res));

  fprintf(' \n');