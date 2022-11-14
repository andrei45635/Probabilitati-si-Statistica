function fr=birthday(n,NS)
  fr=NaN;
  contor=0;
  for(i=1:NS)
    days=randi(365,n,1);
    if(length(days)~=length(unique(days)))
      contor++;
    end
  end
  fr=contor/NS;
end
