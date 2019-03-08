function [p, Vp, n, dS] = NLSQ(f, x, y, Vy, p0, stol = 0.0001, N = 50)
  # Assumption: f = f(x, p)
  W = inv(Vy);  # Gewichtsmatrix
  # 1st iteration
  n = 1;
  p = p0;
  dS = 1;
  while (dS > stol)&&(n < N + 1)
    A = Jacobi(f, x, p);
    resid = (y .- f(x,p))';
    dp = inv(A'*W*A)*A'*W*resid;
    dS = dp'*A'*W*resid;
    p += dp;  
    n += 1;
  endwhile
  n -= 1;
  A = Jacobi(f, x, p);
  Vp = inv(A'*W*A);
endfunction
