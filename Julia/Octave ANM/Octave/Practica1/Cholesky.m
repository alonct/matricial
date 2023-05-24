function A=Cholesky(A)
[m,n]=size(A);
if (m~=n) 
    error("the matrix is not square"); 
end 
small=1.e-8;
if (norm(A-A',inf)>small)
error("nonsymmetric matrix");
end
for j=1:n
A(j,j)=A(j,j)-A(j,1:j-1)*A(j,1:j-1)';
if (A(j,j)< small)
    error("nonpositive matrix"); 
end
if (abs(A(j,j))< small) 
    error("nondefinite matrix"); 
end
A(j,j)=sqrt(A(j,j));
     for i=j+1:n
A(i,j)=A(i,j)-A(j,1:j-1)*A(i,1:j-1)';
        A(i,j)=A(i,j)/A(j,j);
     end
end
A=tril(A);