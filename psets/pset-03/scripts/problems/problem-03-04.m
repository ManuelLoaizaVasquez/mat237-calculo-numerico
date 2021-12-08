clc;
f = @(x) sin(x);
e = 1e-9;
i = integral(f, 0, pi, 'AbsTol', e);
fprintf('%.9f\n', i);
