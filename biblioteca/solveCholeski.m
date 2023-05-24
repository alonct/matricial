function [L,x] = solveCholeski(A,b)
  L = choleski(A)
  
  # Resoluci�n Ax = b
    # 1. Ly = b
      y = solveL(L,b);
    # 2. L'x = y
      x = solveU(L',y);
endfunction