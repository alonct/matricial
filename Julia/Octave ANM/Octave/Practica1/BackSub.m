function x=BackSub(A,b)
% Ejercicio AK5.2
% Computes the solution of system Ax = b
% A is nonsingular upper triangular 
[m,n]=size(A);o=length(b);
if (m~=n || o~=n) 
    error("dimension problem");
end; 
small=1.e-12;
if (norm(A-triu(A),inf)>small)
      error("non upper triangular matrix")
end
   x=zeros(n,1);
   if (abs(A(n,n))<small) 
       error("noninvertible matrix");
   end
   x(n)=b(n)/A(n,n);
   for i=n-1:-1:1
        if (abs(A(i,i))<small)
           error("noninvertible matrix")
        end
        x(i)=(b(i)-A(i,i+1:n)*x(i+1:n))/A(i,i);
   end