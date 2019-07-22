function [A, dA] = slopefit(x, y, dy)
  # Lineare Regression (y = ax) mit Gewichtung nach dem Skript von U. Müller, S.41-42
  # straightforward and easy, but has some drawbacks. (See Ref. 2)
  # takes:
  # x, y, dy vectors, with dy = s(y);
  # returns:
  # A - fit parameter (slope),
  # dA - uncertainty in A.
  # Direct calculation by formulas in Mueller's Script (Ref. 1, p. 41)
  
  A = sum(x.*y./dy.**2)/sum((x.**2)./dy.**2);
  dA = sqrt(1/sum((x.**2)./dy.**2));
endfunction
