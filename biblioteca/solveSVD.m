function x3 = solveSVD(A,b)
  [nA,p] = size(A);
  [U,S,V] = svd(A);
  u = U'*b
  x3 = V*(u(1:p)./diag(S));
endfunction