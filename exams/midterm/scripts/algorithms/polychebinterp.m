function p = polychebinterp(t, y)
  % Polynomial interpolation by the barycentric formula
  % using Chebyshev points of the second kind.
  % Input:
  %   t: interpolation nodes (vector, length n + 1)
  %   y: interpolation values (vector, length n + 1)
  % Output:
  %   p: polynomial interpolant (function)
  
  t = t(:);  % column vector
  n = length(t) - 1;
  C = (t(end) - t(1)) / 4;  % scaling factor to ensure stability
  tc = t / C;
  
  % Barycentric weights using Chebyshev nodes
  w = ones(n + 1, 1);
  factor = -1;
  for k = 1 : n + 1
    if k == 1 || k == n + 1
      d = 1 / 2;
    else
      d = 1;
    end
    w(k) = factor * d;
    factor = factor * (-1);
  end
  
  p = @evaluate;
  
  function f = evaluate(x)
    % Compute interpolant, one value of x at a time.
    f = zeros(size(x));
    for j = 1:numel(x)
      terms = w ./ (x(j) - t );
      f(j) = sum(y.*terms) / sum(terms);
    end
     
    % Apply L'Hopital's Rule exactly.
    for j = find(isnan(f(:)))'  % divided by zero here
      [~,idx] = min(abs(x(j) - t));  % node closest to x(j)
      f(j) = y(idx);  % value at node
    end        
  end
  
end