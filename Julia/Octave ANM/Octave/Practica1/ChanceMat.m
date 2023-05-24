function A=ChanceMat(m,n,p)
  for i=1:m
    for j=1:n
      A(i,j)=2*p*rand - p;
    endfor
  endfor
