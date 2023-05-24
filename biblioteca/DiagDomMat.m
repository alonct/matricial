# Esta función devuelve una matriz diagonal dominante nxn con 
# |aii| > dom * sum(|aij|, j=1,...,n con j=!i)      i = 1,...,n


function DiagDomMat(n,dom)
  A = rand(n,n);
  dominante = false
  while dominante is false:
    
    A = makeDD(A);
    dominante = diagdom(A)
  endwhile
endfunction