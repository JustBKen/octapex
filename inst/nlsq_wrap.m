function [p, up, Vp, fx] = nlsq_wrap(f, x, p0, y, dy, stol = 0.0001, N = 50)
  #Wrapper for leasqr from optim
  w = dy.**(-2);  # set weights to 1/u^2
  [fx, p, cvg, iter, Kp, Vp] = leasqr(x, y, p0, f, stol, N, w); 
  p = p';
  up = sqrt(diag(Vp))';
endfunction
