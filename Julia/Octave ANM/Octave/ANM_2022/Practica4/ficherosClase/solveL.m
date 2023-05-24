## Copyright (C) 2022 Gines Gomariz
##
##Dada una matriz triangular inferior, devuelve las soluciones de esta matriz.
##Lanza un error si no es diagonal inferior.
##
## S es la matriz triangular inferior y b el vector de terminos independientes
## Created: 2022-02-07

function retval = solveL (S, b)
    
    sol = zeros(1,length(S(1,:))); # vector soluciones
    
  if tril(S)-S == zeros(length(S(:,1)),length(S(1,:)))
   for i=1:length(S(:,1))
     
      for j=1:i
        
        if j==i
          sol(i) = sol(i) + b(i); # Termino independiente 
        else 
          sol(i) = sol(i) - (sol(j)*S(i,j)); # Operaciones dadas las otras soluciones
        endif
      
      endfor
      sol(i) = sol(i)/S(i,i); # Dividimos por el factor principal de xi
    endfor
  else 
    error("Matriz no triangular inferior")
  endif
  retval = sol;

endfunction
