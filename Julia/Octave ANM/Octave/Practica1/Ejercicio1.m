clear all
clc
%Paula Gazituaga García 29524103S
disp('Paula Gazituaga García 29524103S')
%Ejercicio 1
disp('Ejercicio 1')
A=[-3 1/2 1/3; -36 8 6; 30 -7.5 -6]
AdA=[-2.9995 0.500 0.33334; -36 8.0003 6; 30 -7.5 -6.0007] %A + dA 
dA= AdA - A;
b=[3;3;3]
bdb=[2.9999; 3.0005; 2.99998] %b+db%
db=bdb-b
[L,U]=LUfacto(A);
x=solveLU(L,U,b) %Resuelvo Ax=b
[Ld,Ud]=LUfacto(AdA);
xdx=solveLU(Ld,Ud,bdb) %x+dx Resuelvo (A+dA)(x+dx)=b+db
dx=xdx-x %dx
disp('primer lado de la desigualdad')
l1=(norm(dx))/(norm(x))
disp('segundo lado de la desigualdad')
l2=cond(A,2)*((norm(dA)/norm(A))+(norm(db)/(norm(A)*norm(xdx))))
disp('Así vemos que la desigualdad es cierta pues l1<=l2')