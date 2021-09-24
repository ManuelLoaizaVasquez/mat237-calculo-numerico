clc;

% We want six digits of accuracy
eps = 1e-6;
max_steps = 100;

fprintf('Roots of f(x) = 2x^3-6x-1\n');

fprintf('\n');
g = @(x) (2 * x^3 - 1) / 6;
root = fixed_point_iteration(g, 1, eps, max_steps, -0.168254);
fprintf('First root: %.6f\n', root);

fprintf('\n');
g = @(x) ((6 * x + 1) / 2)^(1/3);
root = fixed_point_iteration(g, 2, eps, max_steps, 1.810038);
fprintf('Second root: %.6f\n', root);

fprintf('\n');
g = @(x) (4 * x^3 + 1) / (6 * x^2 - 6);
root = fixed_point_iteration(g, -2, eps, max_steps, -1.641784);
fprintf('Third root: %.6f\n', root);