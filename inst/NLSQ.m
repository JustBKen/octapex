function [p, Vp, n, dS, S] = NLSQ(f, x, y, Vy, p0, stol = 0.0001, N = 50)
  # Assumption: f = f(x, p)
  W = inv(Vy);  # Gewichtsmatrix
  # 1st iteration
  n = 1;
  dS = 1;
  p = p0;
  while (dS > stol)&&(n < N + 1)
    A = Jacobi(f, x, p);
    resid = (y .- f(x, p))';  # spaltenvektor
    dp = inv(A'*W*A)*A'*W*resid;
    dS = dp'*A'*W*resid;
    p = (p' + dp)';  
    n += 1;
  endwhile
  n -= 1;
  A = Jacobi(f, x, p);
  Vp = inv(A'*W*A);
  S = sum((y .- f(x, p)).**2);
endfunction
