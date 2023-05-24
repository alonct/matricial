clear all
clc
%EjerciciosPractica3
%Ejercicio 2
disp('Ejercicio 2')
T=[1 1; -1 -7/6]
n=20
c=[-1; 2]
x(1,:)=[-1 2]
for i=2:n;
  x(i,:)=T*x(i-1,:)'+x(1,:)';
endfor
x(n,:)'
%Ejercicio 3
disp('Ejercicio 3')
clear all
T=[-0.05 0.15 0.15; 0.35 0.15 -0.35; -0.2 -0.2 0.3]
n=20
c=[-1.5; 1.6; 1.7]'
x(1,:)=[-1.5 1.6 1.7];
for i=2:n
  x(i,:)=T*x(i-1,:)'+x(1,:)';
endfor
x(n,:)'
%Ejercicio 4
disp('Ejercicio 4')
clear all
%Apartado a 
disp('Apartado a')
A= [3 1 -1;1 -4 2;-2 -1 5]
b=[3;-1;2]
T=eye(3)-A
x(1,:)=ones(1,3);
n=300

for i=2:n;
  x(i,:)=T*x(i-1,:)'+x(1,:)';
endfor
x(n,:)'
%Apartado b
disp('Apartado b')
    x=zeros(size(b));
    MaxIter=200;
    tol=1.e-4;
    w=1;
disp('Jacobi')
[X,iter]=Jacobi(A,b,tol,MaxIter,x)
disp('GaussSeidel')
[X,iter]=GaussSeidel(A,b,tol,MaxIter,x)
 disp('SOR')
[X,iter]=SOR(A,b)
%Ejercicio 9
Considera la matriz:
A1 = [2 -2 0
2 3 ?1
? 0 2
?
?
Comprobar que:
a) Si ? = ?1 Jacobi y Gauss-Seidel son convergentes
b) Si ? = ?3 Jacobi converge pero Gauss-Seidel no.
c) Si ? = ?5 Jacobi y Gauss-Seidel son divergentes


