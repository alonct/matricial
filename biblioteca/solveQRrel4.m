function x = solveQRrel4(Q,R,b)
  # Resolver Ax = b con A = QR
  # Ax = b ?? QRx = b ?? Rx = Q'b
  b2 = Q'*b;
  x = solveU(R,b2);  
endfunction