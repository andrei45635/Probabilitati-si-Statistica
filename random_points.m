function out=random_points(N)
   clf; hold on; axis equal;
   out=0;
   for(i=1:N)
    x=rand;
    y=rand;
    plot(x,y,'r+')
    if(pdist([x;y]) < 0.5)
      out++;
    end
   end
   rectangle('Position', [0 0 1 1], 'FaceColor', 'g')
end
