function res = supremum(p)
  a = 0;
  bool = false;
  bool2 = false;
  while (bool == false)
    bool = true;
    a++;
    copy = p;
    for i = 2:numel(copy)
      copy(i) = copy(i-1)*a + copy(i);
          if (copy(i) < 0)
            bool = bool*bool2;
          endif
    endfor
    if (bool == true)
      res = a;
    endif
  endwhile
endfunction
