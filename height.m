function retval = height (n)
  h = 165
  s = 10
  clf; hold on;
  x = normrnd(h, s, 1, n);
  [~, mij] = hist(x, 10);
  l = 10 / (max(x) - min(x))
  hist(x, mij, l)

  func = @(y) normpdf(y, h, s);
  fplot(func, [min(x), max(x)], '-r')

  prop_estim = mean((x > 160 & x < 170))
  prob_teor = normcdf(170, h, s) - normcdf(160, h, s)
endfunction
