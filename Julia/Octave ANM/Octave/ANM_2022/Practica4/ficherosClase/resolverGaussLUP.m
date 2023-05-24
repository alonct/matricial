function X = resolverGaussLUP(L, U, P, b)
  X = solveU(U, solveL(L, P*b));
endfunction