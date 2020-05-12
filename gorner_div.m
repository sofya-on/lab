function new = gorner_div (p, a)
new=0;
sum=0;
for i=1:length(p)
  sum = sum*a;
  sum = sum + p(i);
  new(i)=sum;
endfor
new(end)=[];
endfunction

