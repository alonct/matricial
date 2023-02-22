
function [Q,R]=Householdergramschmidt(A) % Devuelve Q unitaria y R triangular superior a partir de la descomposicion de A mediante Householdergramschmidt
[m,n]=size(A); % Dimension de la matriz A 

Q=eye(m); % Generamos una matriz identidad de tamaño mxm, que finalmente sera el 
          % producto de las matrices de Househoulder (H_i)
R=A; % Aqui haremos las modificaciones que sufrira la matriz A
  t=min(m,n)-(m<=n); % Etapas de Househoulder
  for k=1:t % Iniciamos un bucle para crear todas las matrices H_i necesarias para 
            % la factorizacion
    a=R(k:m,k); % Seleccionamos el vector columna k por debajo de la diagonal principal 
    e=zeros(m-k+1,1); % Creamos un vector de ceros con m-k+1 filas 
    e(1)=norm(a); % Colocamos en la primera entrada del vector anterior la norma de a
    v=a-sign(a(1))*e; % v en el plano generado por los vectores a y e_1
    normv2=v'*v; % Calculamos la norma al cuadrado del vector v 
    H=eye(m); % Creamos una matriz identidad de talla mxm que se corresponde 
              % con H_0 de Househoulder
    H(k:m,k:m)=eye(m-k+1)-2/normv2*(v*v'); % Matriz H_(k+1) de Househoulder
    Q=Q*H'; % Matriz Q correspondiente a la etapa k+1
    R=H*R; % Matriz R correspondiente a la etapa k+1
  end
  R=triu(R); % Devuelve la matriz triangular superior 
end
