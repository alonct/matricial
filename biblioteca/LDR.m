function [L,D,R] = LDR(A)
  [L, U] = LUdootlittle(A);
  [R, D] = LUdootlittle(U');
  R = R';
endfunction