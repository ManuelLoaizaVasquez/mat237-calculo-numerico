clc;

% We want six digits of accuracy
eps = 1e-6;
max_steps = 100;

fprintf('Roots of f(x) = e^(x - 2) + x^3 - x\n');

fprintf('\n');
g = @(x) exp(x - 2) + x^3;
root = fixed_point_iteration(g, 0.16, eps, max_steps, 0.163822);
fprintf('First root: %.6f\n', root);

fprintf('\n');
g = @(x) (x - exp(x - 2))^(1 / 3);
root = fixed_point_iteration(g, 0.78, eps, max_steps, 0.788940);
fprintf('Second root: %.6f\n', root);

fprintf('\n');
g = @(x) (-exp(x - 2) + 2* x^3) / (3 * x^2 - 1);
root = fixed_point_iteration(g, -1.2, eps, max_steps, -1.023482);
fprintf('Third root: %.6f\n', root);