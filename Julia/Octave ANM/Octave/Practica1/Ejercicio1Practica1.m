clear all
clc
format short;
%Ejercicio1Practica1
disp('Ejercicio 1')
%a
disp('Apartado a')
A=triangSupRandom(5)
B=triangSupRandom(5)
AB=A*B
%b
disp('Apartado b')
C=triangSup1Random(5)
D=triangSup1Random(5)
CD=C*D
%c
disp('Apartado c')
A
inv(A)
B
inv(B)
%d
disp('Apartado d')
C
inv(C)
D
inv(D)
%Ejercicio2Practica1
clear all
disp('Ejercicio 2')
b=rand(6,1)
A=b*b'
[V,D]=eig(A)
%Ejercicio3Practica1
clear all
disp('Ejercicio 3')
%Apartado a
disp('Apartado a')
a=eye(5,5)
u=a(:,3)
disp('eye da la matriz identidad de tamaño n y a(:,i) da la columna i de la matriz a')
%Apartado b
disp('Apartado b')
u=rand(7,1)
v=rand(7,1)
w= v - (1/(norm(u)^2))*(u'*v)*u
%Apartado c
disp('Apartado c')
disp('c.1')
A=rand(5,5)
B=0.5*(A+A')
C=0.5*(A-A')
x=rand(5,1)
Cx=C*x
x'*Cx
disp('Sale casi 0 porque son ortogonales')
disp('c.2')
Bx=B*x
x'*Bx
Ax=A*x
x'*Ax
disp('Sale el mismo producto escalar')
%Ejercicio4Practica1
disp('Ejercicio 4')
clear all
%Apartado a
disp('Apartado a')
A=SymmetricMat(4)
%Apartado b
disp('Apartado b')
A= NonSingularMat(5)
rank(A)
%Apartado c
disp('Apartado c')
A = LowNonSingularMat(6)
rank(A)
%Apartado d
disp('Apartado d')
A = UpNonSingularMat(7)
rank(A)
%Apartado e
disp('Apartado e')
A=ChanceMat(3,4,100)
%Ejercicio5Practica1
clear all
disp('Ejercicio 5')
n=5
r=10^(-20)
p=NonSingularMat(n)
D=diag([ones(n-1,1);r])
A=p*D*inv(p)
det(A)
%Ejercicio6Practica1
clear all
disp('Ejercicio 6')
A=[1:3;4:6;7:9;10:12;13:15]
rank(A)
B=NonSingularMat(3)
C=NonSingularMat(5)
CA=C*A
rank(CA)
AB=A*B
rank(AB)
%Ejercicio8Practica1
disp('Ejercicio 8')
clear all
n=5
r=4
for i=1:r
  z_i = rand(n,1);
endfor
A=zeros(n);
for i=1:r
  v_i=z_i*z_i';
  A=A+v_i;
  endfor
A
rank(A)
%Ejercicio9Practica1
disp('Ejercicio 9')
clear all
n=5
r=2
A=MatRank(n,n,r)
rank(A')
Q=null(A')
u=Q(:,1)
U=A+u*u'
disp('Rango de A+)u*u^t')
rank(U)
disp('Rango de A')
rank(A)
%Ejercicio 10
disp('Ejercicio 10')
clear all
A=[1:3; 4:6; 7:9; 10:12]
B=[-1 2 3; 4:6; 7:9; 10:12]
AtA= A'*A
rank(AtA)
BtB=B'*B
rank(BtB)
AAt=A*A'
rank(AAt)
BBt=B*B'
rank(BBt)
%Ejercicio 12
disp('Ejercicio 12')
clear all
n=400;
tic;
for j=1:n
for i=1:n
a(i,j)=cos(i)*sin(j);
end
end
t1=toc
clear a;
tic
a=zeros(n,n);
for j=1:n
for i=1:n
a(i,j)=cos(i)*sin(j);
end
end
t2=toc
clear a;
tic;
a=zeros(n,n);
for i=1:n
for j=1:n
a(i,j)=cos(i)*sin(j);
end
end
t3=toc
clear a;
tic
a=zeros(n,n);
a=cos(1:n)'*sin(1:n);
t4=toc
%Ejercicio13Practica1
disp('Ejercicio 13')
clear all
n=5
A=rand(n,n)
T=triu(A)
D=diag(diag(A))
A=T-D
A2=A^2
A3=A^3
A4=A^4
A5=A^5
%Ejercicio14Practica1
disp('Ejercicio 14')
clear all
P= [1 2 2 1; 2 3 3 2; -1 1 2 -2; 1 3 2 1]
D= [2 1 0 0; 0 2 1 0; 0 0 3 0; 0 0 0 4]
A= P*D*inv(P)
%Apartado a
disp('Apartado a')
e=eig(A)
%Apartado b
disp('Apartado b')
n=3
A3=A^n
n=10
A10=A^n
%Apartado c
disp('Apartado c')
[p,d]=eig(A)
%Ejercicio15Practica1
disp('Ejercicio 15')
clear all
%Apartado a
disp('Apartado a')
n=2
A=rand(n,n)
At=A'
n=3
A=rand(n,n)
At=A'
n=4
A=rand(n,n)
At=A'
%Apartado b
disp('Apartado b')
m=2
n=3
A=rand(m,n)
rangoAtA=rank(A'*A)
AAte=eig(A*A')
AtAe=eig(A'*A)
m=3
n=4
A=rand(m,n)
AAte=eig(A*A')
AtAe=eig(A'*A)
B=rand(n,m)
AB=A*B
eAB=eig(AB)
BA=B*A
eBA=eig(BA)
%Ejercicio16Practica1
disp('Ejercicio 16')
clear all
n=4
u=rand(n,1)
v=rand(n,1)
A=eye(n) + u*v'
1+v'*u
[P,D]=eig(A)
%Ejercicio17Practica1
disp('Ejercicio 17')
clear all
%Apartado a
disp('Apartado a')
n=2
A=PdSmat(n)
det(A)
n=3
A=PdSmat(n)
det(A)
n=4
A=PdSmat(n)
det(A)
%Apartado b
disp('Apartado b')
n=10
A=PdSmat(n)
eA=eig(A)
for(k= 1:n)
A_k=A(1:k,1:k)
det(A_k)
eA_k=eig(A_k)
endfor
%Ejercicio18Practica1
disp('Ejercicio 18')
clear all
n=4
A=SymmetricMat(n)
[P,D]=eig(A)
%Apartado a
disp('Apartado a')
suma=0;
for i=1:n
  suma= suma + D(i,i)*P(:,i)*P(:,i)';
  endfor
suma
%Apartado b
disp('Apartado b')
D(1,2)=1;
D
B=P*D*inv(P)
[Pb,Db]=eig(B)
sumab=0;
for i=1:n
  sumab= sumab + Db(i,i)*Pb(:,i)*Pb(:,i)';
endfor
sumab
%Ejercicio19Practica1
disp('Ejercicio 19')
clear all
n=2
A=rand(n,1)*rand(1,n)
rank(A)
n=3
A=rand(n,1)*rand(1,n)
rank(A)
n=4
A=rand(n,1)*rand(1,n)
rank(A)
n=5
A=rand(n,1)*rand(1,n)
rank(A)
disp('Todas las matrices tienen rango 1')
%Ejercicio22Practica1
disp('Ejercicio 22 apartado c')
clear all
A=[10 7 8 7; 7 5 6 5; 8 6 10 9; 7 5 9 10]
[Ua,Sa,Va]=svd(A)
B=[10 2 8 7; 7 3 6 5; 8 6 10 9; 4 5 9 10]
[Ub,Sb,Vb]=svd(B)
%Ejercicio23Practica1
disp('Ejercicio 23')
clear all
n=3
A=triangSupRandom(n)
b= rand(n,1)
S=solveU(A,b)
A*S

%FIN!!!!!



