function [xbar, dxbar] = getwavg(x, dx)
  #gewichteter mittelwert, mit unsich
  l = length(x);
  weights = (dx(1)^2)./(dx.^2);
  xbar = sum(weights.*x)/sum(weights);
  suma = 0;
  for i = 1:l
    suma += (dx(i)*weights(i))^2;
  endfor
  dxbar = sqrt(suma)/sum(weights);
endfunction
