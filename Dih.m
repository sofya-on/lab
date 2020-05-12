function [res, i] = Dih(p)
  a = Inf(p);
  b = Sup(p);
  c = (a + b) / 2;
  i =0;
  while (abs(Value(p, c)) > 0.001)
    ++i;
    if ((Value(p, a) >= 0 & Value(p, c) <= 0) || (Value(p, a) <= 0 & Value(p, c) >= 0))
      b = c;
    else
      a = c;
    end
    c = (a + b) / 2;
  endwhile
  res = c;
endfunction
