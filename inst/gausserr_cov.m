function dy = gausserr_cov(f, x, p, dx, Vp)
  nx = length(x);
  np = length(p);
  var_y = [];
  for i = 1:nx
    V = [[dx(i)^2, zeros(1, np)]; [zeros(np, 1), Vp]];  # es wird angenommen, cov(xi, pj) = 0 !!!
    B = [];
    for j = 1:np + 1
      B = [B, pder2(f, j, x(i), p)]; 
    endfor  
    var_yi = B*V*B';  # see moderne methoden, Abschnitt 5.3
    var_y = [var_y, var_yi];
  endfor
  dy = sqrt(var_y); 
endfunction