function deriv = pder(f, n, varargin); 
  #calculates symmetric partial derivative, differential quotient by h = 10^-8
  #takes (f, n, args)
  #f - pointer to the to be diff. function
  #n - position of the argument in the args array to be diff. by
  #args - the arguments array to pass to f, defining the point where pder is to be calculated
  h = 10^(-8);
  l = nargin();
  argsplus = varargin;
  argsminus = varargin;
  argsplus{n} = argsplus{n} .+ h/2;
  argsminus{n} = argsminus{n} .- h/2;
  deriv = (f(argsplus{1:(l-2)}) .- f(argsminus{1:(l-2)}))./h;
endfunction
