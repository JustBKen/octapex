function J = Jacobi(f, x, p)
  # Jacobian of f, of the form (df(xi)/dpj)ij
  maxi = length(x);
  maxj = length(p);
  i = 1;  # start top
  j = 1;  # start left
  J = pder(f, 1 + j, x(i), p);  # initialize first row
  j = 2;  # step right
  while j < maxj + 1  # build first row
    next = pder(f, j+1, x(i), p);  # calculate pder
    J = [J, next];  # append to row
    j += 1;  # step right
  endwhile
  i = 2;  # step down
  while i < maxi + 1
    j = 1;  # start left
    row = pder(f, j+1, x(i), p); # initialize next row
    j += 1; # step right
    while j < maxj + 1  # build next row
      next = pder(f, j+1, x(i), p);  # calculate pder
      row = [row, next];  # append to row
      j += 1;  # step right
    endwhile
    J = [J; row];  # append row to J
    i += 1;  # step down
  endwhile
endfunction
