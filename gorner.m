function res = Value(p, a)
  res = p(1);
  for i = 2:numel(p)
    res = res*a + p(i);
  endfor
endfunction
