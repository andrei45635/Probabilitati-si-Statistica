function retval = monte_carlo (a, b, M, nr_sim)
  g = @(x) exp(-x.^2)

  x = unifrnd(a, b, 1, nr_sim)
  y = unifrnd(0, M, 1, nr_sim)

  clf; hold on; axis equal;
  plot(x (y < g(x)), y(y < g(x)), '*')
  fplot(g, [a, b], '-r')

  retval = mean(y < g(x)) * M * (b - a)
endfunction
