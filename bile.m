function p=bile(N)
  p=NaN;
  p1=NaN;
  p2=NaN;
  p3=NaN;
  final=0;
  contor=0;
  contor1=0;
  for(i=1:N)
    alegeri=randsample('RRRRRAAAVV',3,false);
    tf=ismember('R', alegeri);
    if(tf==1)
      contor++;
    end
    tf1=strfind(alegeri, 'RRR');
    if(tf1==1)
      contor1++;
    end
  end
  p1=contor/N;
  p2=contor1/N;
  p3=p2/p1;
  p=contor1/contor;
end
