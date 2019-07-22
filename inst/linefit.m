function [A, B, dA, dB] = linefit(x, y, dy)
  # Lineare Regression (y = ax + b) mit Gewichtung nach dem Skript von U. Müller, S.41.
  # straightforward and easy, but has some drawbacks. (See Ref. 2)
  # takes:
  # x, y, dy vectors, with dy = s(y);
  # returns:
  # A, B - fit parameters,
  # dA, dB - their uncertainties.
  # Direct calculation by formulas in Mueller's Script (Ref. 1, p. 41)

  D = sum((x.**2)./dy.**2).*sum(1./dy.**2) - (sum(x./dy.**2)).**2;
  A = (sum(x.*y./dy.**2).*sum(1./dy.**2) - sum(x./dy.**2).*sum(y./dy.**2))./D;
  B = (sum((x.**2)./dy.**2).*sum(y./dy.**2) - sum(x.*y./dy.**2).*sum(x./dy.**2))./D;
  dA = sqrt(sum(1./dy.**2)./D);
  dB = sqrt(sum((x.**2)./dy.**2)./D);
endfunction
