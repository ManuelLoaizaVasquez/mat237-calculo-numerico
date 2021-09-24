clc;
fprintf('Roots of the polynomial x^2 - (2 + eps) x + 1\n');
for n = 4:2:12
    eps = 10^(-n);
    f = @(x) x^2 - (2 + eps) * x + 1;
    root = fzero(f, 1);
    fprintf('eps = %e, root = %.10f\n', eps, root);
end