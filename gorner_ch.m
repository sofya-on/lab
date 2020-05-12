function retval = gorner_ch(p, a)
  retval = []; 
  for i = 1:numel(p)
    for j = 2:numel(p)
      p(j) = p(j-1)*a + p(j);
    endfor
    retval(i) = p(end);
    p(end) = [];
  endfor
  retval = fliplr(retval);
endfunction
