clc;
f = @(x) exp(-x);
a = 0;
b = 0.8;
n = 4;
S = simpson_rule(f, a, b, n);
fprintf('Integral: %.6f\n', S);
