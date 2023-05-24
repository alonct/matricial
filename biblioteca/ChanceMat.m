# Esta función crea matrices de talla m x n con entradas aleatorias en el intervalo
# [-p, p]


function A = ChanceMat(m,n,p)
  A = zeros(m, n);
  a = -p;
  b = p;
  for i = 1:n
    r = (b - a).*rand(m,1) + a;
    A(:,i) = r;
  endfor
endfunction