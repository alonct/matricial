function A=MatRank(m,n,r)
  A=rand(m,n);
  i=1;
  while(rank(A)!= r)
  A(:,i+1)=rand*A(:,i);
  i=i+1;
endwhile