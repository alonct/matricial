# Función solveLU de acuerdo al ejercicio 2 de la práctica 2
# Datos de entrada:
#   A -> matriz del sistema
#   b
# Salida:
#   x -> solución del sistema Ax = b

function  [L,U,x] = solveLU2param(A, b)
  [L, U] = LUdootlittle(A);
  
  # Resolvemos LUx = b
  [m,n] = size(L);
  [p,c] = size(b);
  if p ~= n     %Numero de columnas de L debe ser igual al numero de filas de b
    error('Dimensiones incompatibles de L y B.');
  end
  x = solveU(U, solveL(L,b));
endfunction