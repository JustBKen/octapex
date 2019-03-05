function unsich = maxerr(f, varargin)  
  # varargin = params, dparams
  #calculate uncertainty of f(params) by the Groesstfehlerabschaetzung rule, provided the argument uncertainties dparams (as comma-sep. sets, not vectors/lists)
  #returns single unsich values, or a set of points, if input is set of points
  #f to be passed as @f (handle);
  #f must be called as f(params), params as a set (not vector/list - just comma separated values)

  l = (nargin()-1)/2;
  unsich = 0;
  for n = 1:l
    unsich = unsich .+ abs(pder(f, n, varargin{1:l}).*varargin{l+n});
  endfor
endfunction
