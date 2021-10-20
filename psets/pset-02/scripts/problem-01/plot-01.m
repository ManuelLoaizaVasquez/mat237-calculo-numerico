clc;

set(0,'defaulttextInterpreter','latex') 
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0, 'defaultLegendInterpreter','latex');

% For images
set(0, 'defaultAxesFontSize', 15)
set(0, 'defaultLineLineWidth', 2.0);

% Objective function
f = @(x) abs(x^3) + x - 6;

delta = 0.01;
left = -3;
right = 3;
current_x = left;

x_axis = [];
y_axis = [];

while current_x <= right
    x_axis(end + 1) = current_x;
    y_axis(end + 1) = f(current_x);
    current_x = current_x + delta;
end

plot(x_axis, y_axis)
grid on;