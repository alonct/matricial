## Copyright (C) 2022 Gines Gomariz

##Algoritmo de descoposicion QR por Householder, que es 
##mas estable computacionalmente frente a errores de ortogonalidad

## Created: 2022-03-17

function [Q,R] = Householdergramschmidt(A)

R = A; #una matriz donde ir haciendo las modificaciones de A.
[m,n]=size(A); #filas y columnas de A.
Q = eye(m); # matriz identidad, y donde ir guardando el producto de las matrices de Householder.
t=min(m,n)-(m<=n); #número de etapas Householder.

for k=1:t
   r=R(k:m,k);
   e=zeros(m-k+1,1);
   e(1)=norm(r);
   #vector rk ∈ Km−k+1
   v=r-sign(r(1))*e;
   #vector para simetría de HouseHolder.
   normv2=v'*v;
   if abs(normv2)< 100*eps  # Aceptamos un error de a lo sumo 2.2204e-14, para buena ortogonalidad
    continue
   end
   H=eye(m);
   H(k:m,k:m)=eye(m-k+1)-2/normv2*(v*v');  #Matriz Hk+1.
   Q=Q*H'; #Matriz Qk+1.
   R=H*R; #Matriz Rk+1.
end
 
 R=triu(R);

endfunction
