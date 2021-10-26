clc;
f = @(x) x.*exp(x) -2;
x = [0.5 0.8 1];
estimates = iqi(f, x(1), x(2), x(3));
fprintf('Example 4.4.1 root : %.10f\n', estimates(end));

f = @(x) x + cos(10 * x);
x = [0.8 1.2 1];
estimates = iqi(f, x(1), x(2), x(3));
fprintf('Example 4.4.3 root : %.10f\n', estimates(end));