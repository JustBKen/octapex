function [a, da] = SlopeReg(x, y, s)
  # nach muellers skript. (s. 42)
  # s := dy
  
  a = sum(x.*y./s.**2)/sum((x.**2)./s.**2);
  da = sqrt(1/sum((x.**2)./s.**2));
endfunction
