function x = iqi(f, x1, x2, x3)
  % Inverse quadratic interpolation method for a scalar equation.
  % Input:
  %   f: objective function 
  %   x1, x2, x3: initial estimates
  % Output
  %   x: vector of root approximations (last is best)
  
  % Operating parameters.
  funtol = 100 * eps;
  xtol = 100 * eps;
  maxiter = 40;
  
  x = [x1 x2 x3];
  y = f(x);
  k = 0;
  dx = abs(x3 - x2);
  
  while (abs(dx) > xtol) && (abs(y(end)) > funtol) && (k < maxiter)
      coefficients = polyfit(y(k + 1 : k + 3), x(k + 1 : k + 3), 2);
      x(k + 4) = polyval(coefficients, 0);
      y(k + 4) = f(x(k + 4));
      k = k + 1;
      dx = abs(x(end) - x(end - 1));
  end
  
  if k == maxiter, warning('Maximum number of iterations reached.'), end