function [retval, i] = dihotomy(p)
  a = infinum(p);
  b = supremum(p);
  c = (a + b) / 2;
  i =0;
  while (abs(gorner(p, c)) > 0.001)
    ++i;
    if ((gorner(p, a) >= 0 & gorner(p, c) <= 0) || (gorner(p, a) <= 0 & gorner(p, c) >= 0))
      b = c;
    else
      a = c;
    end
    c = (a + b) / 2;
  endwhile
  retval = c;
endfunction
