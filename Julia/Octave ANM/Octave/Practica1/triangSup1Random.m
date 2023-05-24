function A=triangSup1Random(n)
  for i = 1:n
  for j = 1: n
   if i>j
     A(i,j)=0;
   endif
   if i==j
     A(i,j)=1;
   endif
  if i<j
    A(i,j)=rand;
  endif
  endfor
endfor