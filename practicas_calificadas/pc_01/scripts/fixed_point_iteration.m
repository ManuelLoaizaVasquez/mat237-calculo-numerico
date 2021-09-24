% Returns an approximate solution to f(x) = x with a tolerance of eps
% and at most max_steps steps (to prevent infinite loop)
% Usage: root = fixed_point_iteration(f, guess, eps, max_steps);

function x = fixed_point_iteration(g, guess, eps, max_steps, r)
  % Base case
  x = guess;
  fprintf('step: %d, x: %.6f, g: %.6f, e_i = %.6f\n', 0, x, g(x), abs(x - r));
  steps = 0;
  prev_e = abs(x - r);
  while abs(x - g(x)) >= eps && steps < max_steps
      steps = steps + 1;
      x = g(x);
      e = abs(x - r);
      fprintf('step: %d, x: %.6f, g: %.6f, e_i = %.6f, e_i / e_{i - 1} = %.6f\n', steps, x, g(x), e, e / prev_e);
      prev_e = e;
  end
end