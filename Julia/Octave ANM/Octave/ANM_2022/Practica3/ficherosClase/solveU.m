## Copyright (C) 2022 Gines Gomariz
##
##Dada una matriz triangular superior, devuelve las soluciones de esta matriz.
##Lanza un error si no es diagonal superior.
##
##U es la matriz triangular superior y b el vector de terminos independientes
## Created: 2022-02-07

function retval = solveU (U, b)
    
    sol = zeros(1,length(U(1,:))); # vector soluciones
    
  if triu(U)-U == zeros(length(U(:,1)),length(U(1,:)))
   for i=length(U(:,1)):-1:1
     
      for j=i:length(U(:,1))
        
        if j==i
          sol(i) = sol(i) + b(i); # Termino independiente 
        else 
          sol(i) = sol(i) - (sol(j)*U(i,j)); # Operaciones dadas las otras soluciones
        endif
      
      endfor
      sol(i) = sol(i)/U(i,i); # Dividimos por el factor principal de xi
    endfor
  else 
    error("Matriz no triangular superior")
  endif
  retval = sol;

endfunction
