function p = chebinterp(f, n)
  % Polynomial interpolation by Chebyshev points of the second kind.
  % Input:
  %   f: objective function (dom(f) = [-1, 1])
  %   n: n + 1 Chebyshev second-kind nodes
  % Output:
  %   p: polynomial interpolant (function)
  theta = linspace(0, pi, n + 1)';
  nodes = -cos(theta);
  p = polychebinterp(nodes, f(nodes));
end