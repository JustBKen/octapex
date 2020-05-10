function unsich = gausserr2(f, x, p, dx, dp)  
  summa = (pder2(f, 1, x, p).*dx).**2;
  l = length(p); 
  for i = 1:l
    summa = summa .+ (pder2(f, i+1, x, p).*dp(i)).**2;
  endfor
  unsich = sqrt(summa);
endfunction