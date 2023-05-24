function A=PdSmat(n)
A=SymmetricMat(n);
[P,D]=eig(A);D=abs(D);
D=D+norm(D)*eye(size(D));
A=P*D*inv(P);