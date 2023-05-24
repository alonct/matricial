## Copyright (C) 2022 Gines Gomariz

##Funcion que devuelve una matriz de tamaño n*m cuyas entradas están en el
##intervalo [-p,p]

## Created: 2022-02-01

function retval = ChanceMat (m,n,p)
  a = -p;
  b = p;
  
  mat = zeros(m,n);
  
  for i=1:m
    for j=1:n
      mat(i,j) = a + (b-a)*rand(1,1);
    endfor
  endfor
  
  retval = mat;
endfunction
