function [x1,x2,x3] = MinL2Comparacion(A,b)
  # Comparamos la resolucion de un problema de mínimos cuadrados usando Choleski,
  # QR y SVD
  
  # Aplicamos Choleski
  tic;
  Apb = A'*b;
  B = choleski(A'*A);
  y1 = B'\Apb;
  x1 = B\y1;
  t1 = toc;
  
  # Aplicamos QR
  tic;
  x2 = solveQR(A,b);
  t2 = toc;
  
  # Aplicamos SVD
  tic;
  x3 = solveSVD(A,b);
  t3 = toc;
  
  # Representación resultados
  fprintf('Tiempo con Choleski\n');
  t1
  fprintf('Tiempo con QR\n');
  t2
  fprintf('Tiempo con SVD\n');
  t3
  fprintf('solucion con Choleski\n');
  norm(A*x1-b)
  fprintf('solucion con QR\n');
  norm(A*x2-b)
  fprintf('solucion con SVD\n');
  norm(A*x3-b)
  fprintf('Norma entre solucion Choleski vs QR\n');
  norm(x1-x2)
  fprintf('Norma entre solucion QR vs SVD\n');
  norm(x2-x3)
  fprintf('Norma entre solucion SVD vs Choleski\n');
  norm(x1-x3)
endfunction