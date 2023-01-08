function retval = zaruri(n, nr_z)
    p = 0;
    d = [];
    matr = [];
    fr_abs = 0;
    sum = 0;
    for(i = 1: n)
    zar_sum = 0;
      for(j = 1: nr_z)
        zar = randi(6, 1);
        zar_sum += zar;
      endfor
      d(end+1) = zar_sum;
    endfor
    retval = d;
    [~, ~, k] = unique(retval);
    freq_abs = accumarray(k, k, [], @numel)
    [~, k1] = sort(freq_abs(k), 'descend')

    cv = tabulate(retval, length(retval));
    rel_freq = zeros(1, length(cv));
    for(i = 1: length(cv))
      rel_freq(i) = cv(i, 3);
    endfor
    rel_freq;

    clf; grid on; hold on;
    bar(rel_freq)

    contor = 0;
    for(i = 1: 5000)
      px = binornd(5, 0.5);
      if(px == 2)
        contor++;
      endif
    endfor
    p = contor/5000
endfunction
