function [a, da, b, db] = LinReg(x, y, s)
  # nach muellers skript. (s. 41)
  # s := dy
  
  D = sum((x.**2)./s.**2).*sum(1./s.**2) - (sum(x./s.**2)).**2;
  a = (sum(x.*y./s.**2).*sum(1./s.**2) - sum(x./s.**2).*sum(y./s.**2))./D;
  da = sqrt(sum(1./s.**2)./D);
  b = (sum((x.**2)./s.**2).*sum(y./s.**2) - sum(x.*y./s.**2).*sum(x./s.**2))./D;
  db = sqrt(sum((x.**2)./s.**2)./D);
  
endfunction
