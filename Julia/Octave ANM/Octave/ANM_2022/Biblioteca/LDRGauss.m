## Copyright (C) 2022 Gines Gomariz
##
##Dada una matriz A, te devuelve su factorizacion LDR, con L triangular
##inferior, D diagonal y R triangular superior.

## Created: 2022-02-18

function [L,D,R] = LDRGauss (A)
    
    [L,U] = LUdootlittle(A);
    H = U';
    [R,D] = LUdootlittle(H);
    R = R';
    D = D';
    
    L = L;
    D = D;
    R = R;
    
    
endfunction
