function [L,D,R]= LDR(A)
  [L,U]=LUfacto(A);
  n=rows(U);
  D=zeros(n,n);
  for i=1:n
    D(i,i)=U(i,i);
  endfor
  for i=1:n
    R(i,:)=U(i,:)/U(i,i);
  endfor
