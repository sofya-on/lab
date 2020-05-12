function retval = gorner (p, a)
  sum=0;
for i=1:length(p)
  sum = sum*a;
  sum = sum + p(i);
endfor
  retval = sum;
endfunction
