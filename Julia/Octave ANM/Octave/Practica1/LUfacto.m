function [L,U]=LUfacto(A)
[m,n]=size(A);
if (m~=n) 
    error("the matrix is not square"); 
end 
small=1.e-16;
for k=1:n-1
if (abs(A(k,k))<small) 
    error("error: zero pivot"); 
end 
    for i=k+1:n
        A(i,k)=A(i,k)/A(k,k);
        A(i,k+1:n)=A(i,k+1:n)-A(i,k)*A(k,k+1:n); 
    end
end
U=triu(A);
L=A-U+diag(ones(n,1));