clc;
f = @(x) sqrt(x);
e = 1e-9;
i = integral(f, 0, 1, 'AbsTol', e);
fprintf('%.9f\n', i);
