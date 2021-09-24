clc;

% We want six digits of accuracy
eps = 1e-6;
max_steps = 100;

fprintf('Roots of f(x) = 2x^3-6x-1\n');

fprintf('\n');
g = @(x) (2 * x^3 - 1) / 6;
root = fixed_point_iteration(g, 1, eps, max_steps);
fprintf('First root: %.6f\n', root);

fprintf('\n');
g = @(x) ((6 * x + 1) / 2)^(1/3);
root = fixed_point_iteration(g, 2, eps, max_steps);
fprintf('Second root: %.6f\n', root);

fprintf('\n');
g = @(x) (4 * x^3 + 1) / (6 * x^2 - 6);
root = fixed_point_iteration(g, -2, eps, max_steps);
fprintf('Third root: %.6f\n', root);

% Returns an approximate solution to f(x) = x with a tolerance of eps
% and at most max_steps steps (to prevent infinite loop)
% Usage: root = fixed_point_iteration(f, guess, eps, max_steps);

function x = fixed_point_iteration(f, guess, eps, max_steps)
    % First step
    x = f(guess);
    steps = 1;
    fprintf('step: %d x: %.6f\n', steps, x);
    while abs(x - f(x)) > eps && steps < max_steps
        x = f(x);
        steps = steps + 1;
        fprintf('step: %d x: %.6f\n', steps, x);
    end
end