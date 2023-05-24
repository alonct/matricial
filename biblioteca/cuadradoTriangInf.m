# Ejercicio 4 - Sea L una matriz triangular inferior con 1 en la diagonal. 
# Escribe una función que proporcione T matriz triangular inferior con 1 en
# diagonal tal que T^2 = L.

function D = cuadradoTriangInf(L)
  [n,m] = size(L);
  D = eye(n);
  
  for j=n-1:-1:1
     D(j+1,j) = L(j+1,j)/2;
  endfor
  
  for j=n-2:-1:1
   for i=1:j
     D(i+(n-j),i) = L(i+(n-j),i)/2 - (D(i+(n-j),:)*diag([0;ones(n-2,1);0])*D(:,i))/2;
   endfor
  endfor 
  
  for i = 1:n
    D(i,i) = L(i,i) ^ (1/2);
  endfor
  
endfunction