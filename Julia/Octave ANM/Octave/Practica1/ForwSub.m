function x=ForwSub(A,b)
% Ejercicio AK5.2
% Computes the solution of system Ax = b
% A is nonsingular lower triangular 
[m,n]=size(A);o=length(b);
if (m~=n || o~=n) 
    error("dimension problem")
end
small=1.e-12;
if (norm(A-tril(A),"inf")>small)
      error("non lower triangular matrix")
end
   x=zeros(n,1);
   if (abs(A(1,1))<small)
       error("noninvertible matrix")
   end
   x(1)=b(1)/A(1,1);
   for i=2:n
        if (abs(A(i,i))<small)
           error("noninvertible matrix")
        end
        x(i)=(b(i)-A(i,1:i-1)*x(1:i-1))/A(i,i);
   end