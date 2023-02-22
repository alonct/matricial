clear all;
n=15;
A=hilb(n);
[U,S,V]=svd(A);
for r=1:n
Ua=U(1:n,1:r);
Va=V(1:n,1:r);
Sa=S(1:r,1:r);
B=Ua*Sa*Va';
E=(B-A)./A;
e=norm(E,inf);

disp([' r= ',num2str(r),' max error relativo= ',num2str(e)])
end