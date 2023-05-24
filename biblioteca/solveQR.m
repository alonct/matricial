function x2 = solveQR(A,b)
  [nA,p] = size(A);
  [Q,R] = qr(A);
  c = Q'*b;
  x2 = R(1:p,1:p)\c(1:p);
endfunction