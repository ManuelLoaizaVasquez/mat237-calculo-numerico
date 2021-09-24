clc;

set(0,'defaulttextInterpreter','latex') 
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0, 'defaultLegendInterpreter','latex');

% For images
set(0, 'defaultAxesFontSize', 15)
set(0, 'defaultLineLineWidth', 2.0);

% Statement matrix
A = @(x) [
    1, 2, 3, x;
    4, 5, x, 6;
    7, x, 8, 9;
    x, 10, 11, 12];

% Objective function
f = @(x) det(A(x)) - 1000;

% First, I plot some points to find an interval in which I have to do
% the binary search
test_size = 100;
x_axis = zeros(1, test_size);
y_axis = zeros(1, test_size);

for i = 1:test_size
    x_axis(i) = -20 + 0.4 * (i - 1);
    y_axis(i) = f(x_axis(i));
end

plot(x_axis, y_axis)
grid on;

roots = zeros(1, 2);
% According to my plot, I will choose two intervals
% First interval: [-20, -15]
roots(1) = binary_search(-20, -15, f, 1e-6);
% Second interval: [9, 10]
roots(2) = binary_search(9, 10, f, 1e-6);

fprintf('roots = [%.6f, %.6f]', roots(1), roots(2));
fprintf('values = [%.6f, %.6f]', f(roots(1)), f(roots(2)));

% Returns a root of the function f in the interval [l, r] in case it is
% found. Otherwise, it returns the midpoint of the interval, which is
% small enough according to our theory.
% Usage: root = binary_search(left, right, f, eps);

function root = binary_search(left, right, f, eps)
    root = NaN;
    if f(left) * f(right) > 0
        return
    end
    steps = round((log(right - left) - log(eps)) / log(2)) + 1;
    for step = 1:steps
        mid = left + (right - left) / 2;
        if f(left) * f(mid) > 0
           left = mid; 
        elseif f(left) * f(mid) < 0
            right = mid;
        else
            root = mid;
            return
        end
    end
    root = left + (right - left) / 2;
end