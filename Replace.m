function res = Replace(p, a)
  res = []; 
  for i = 1:numel(p)
    for j = 2:numel(p)
      p(j) = p(j-1)*a + p(j);
    endfor
    res(i) = p(end);
    p(end) = [];
  endfor
  res = fliplr(res);
endfunction