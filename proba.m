function rez_vect = proba(X,P,NS)
  rez_vect=[];
  for(i=1:NS)
    y=rand();
    p=0;
    for(j=1:length(X))
      p+=P(j);
      if(y < p)
        xi=X(j);
        rez_vect=[rez_vect;xi];
      endif
    endfor
   endfor
  rez_vect;
  clf;
  grid on;
  hold on;
  N=hist(rez_vect, X);
  bar(X, N/NS, 'FaceColor', 'r')
end
