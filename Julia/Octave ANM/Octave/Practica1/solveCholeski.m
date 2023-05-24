function x=solveCholeski(A,b)
 G=Cholesky(A);
B=inv(G)*b;
x=BackSub(G',B);