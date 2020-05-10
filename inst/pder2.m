function deriv = pder2(f, n, x, p, h=10^(-8)); 
  if n > 1 
    pplus = p;
    pminus = p;
    pplus(n-1) = pplus(n-1) + h/2;
    pminus(n-1) = pminus(n-1) - h/2;
    deriv = (f(x, pplus) .- f(x, pminus))./h;    
  else
    xplus = x;
    xminus = x;
    xplus = xplus .+ h/2;
    xminus = xminus .- h/2;
    deriv = (f(xplus, p) .- f(xminus, p))./h;  
  endif
  endfunction
