function res = infinum(p)
  a = 0;
  bool = false;
  bool2 = false;
  for i = 2:2:numel(p)
    p(i) = -p(i);
  endfor
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
      res = -a;
    endif
   endwhile 
endfunction
