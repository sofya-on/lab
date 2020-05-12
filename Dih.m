function [res, i] = dih(p)
  a = Inf(p);
  b = Sup(p);
  c = (a + b) / 2;
  i =0;
  while (abs(gorner_div(p, c)) > 0.001)
    ++i;
    if ((gorner_div(p, a) >= 0 & gorner_div(p, c) <= 0) || (gorner_div(p, a) <= 0 & gorner_div(p, c) >= 0))
      b = c;
    else
      a = c;
    end
    c = (a + b) / 2;
  endwhile
  res = c;
endfunction
