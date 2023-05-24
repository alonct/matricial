# Esta función crea matrices no singulares aleatorias dado un entero n


function A = NonsingularMat(n)
  A=rand(n,n);
  A=A+eye(n)*norm(A,'Inf');
endfunction