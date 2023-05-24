%Paula Gazituaga García 29524103S
function R = Householdergramschmidt(A);
      m = rows(A);
      n= columns(A);
       %Almacena el tamaño de A que se le asignará a las matrices Q y R
      Q = eye(m) %La matriz Q es la identidad de tamaño m 
      R=A; %Iremos realizando modificaciones en A para obtener R, por eso asignamos a R en primer lugar A
     
      for k = 1:2
        a=R(k:m,k); %este es el vector con el que empezamos el algoritmo (a_1) 
        e=zeros(m-k+1,1); %Esta linea y la siguiente la usamos para definir e_1*||a||
        e(1)= norm(a); %Es decir un vector con la primera componente la norma de a y el resto 0
        v= e.*sign(a(1,1)) + a; %Aqui obtenemos nuestro u_1= a_1-norm(a)*e1
        v= v*(1./norm(v)); %actualizamos v
        R(k:m,k:n)=(eye(m-k+1)-2*v*v')*R(k:m,k:n); %obtenemos R con mediante operaciones en la submatriz que viene dada por los indices de a
        Q(1:k-1,k:m)=Q(1:k-1,k:m)*(eye(m-k+1)-2*v*v'); %obtenemos los Q anteriores a 'a'
        Q(k:m,k:m)=Q(k:m,k:m)*(eye(m-k+1)-2*v*v'); %obtenemos los Q posteriores a 'a'
%Como vamos actualizando las Q y R en cada iteración del for al final quedan las Q, R buscadas.
        end