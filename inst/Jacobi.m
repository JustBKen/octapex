function J = Jacobi(f, x, p)
  # Jacobian of f, of the form (df(xi)/dpj)ij
  J = [];
  j = 1;
  maxj = length(p);
  while j <= maxj
    column = pder2(f, j+1, x, p);
    J = [J; column];
    j += 1;
  endwhile
  J = J';
endfunction
