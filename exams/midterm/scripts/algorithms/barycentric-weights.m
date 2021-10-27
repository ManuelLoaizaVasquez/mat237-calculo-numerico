function w = barycentric_weights(t)
  % Polynomial interpolation by the barycentric formula.
  % Input:
  %   t: interpolation nodes (vector, length n + 1)
  % Output:
  %   w: weights (vector, length n + 1)
  
  t = t(:);  % column vector
  n = length(t) - 1;
  C = (t(end) - t(1)) / 4;  % scaling factor to ensure stability
  tc = t / C;
  
  % Adding one node at a time, compute inverses of the weights.
  omega = ones(n + 1, 1);
  for m = 1 : n
    d = (tc(1 : m) - tc(m + 1));  % vector of node differences
    omega(1 : m) = omega(1 : m).*d;  % update previous 
    omega(m + 1) = prod(-d);  % compute the new one
  end
  w = 1./omega;  % go from inverses to weights
end