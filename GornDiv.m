function res = GornDiv(p, a)
  res = p; 
  for i = 2:numel(p)
    res(i) = res(i-1)*a + res(i);
  endfor
  res(end) = [];
endfunction