clc;

set(0,'defaulttextInterpreter','latex') 
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0, 'defaultLegendInterpreter','latex');
set(0, 'defaultAxesFontSize', 15)
set(0, 'defaultLineLineWidth', 2.0);

f = @(x) x.^(-2) - sin(x);
interval = [1 / 2, 4 * pi];
fplot(f, interval);

x_axis = [0.8, 1.5, 2.5, 4, 5.5, 7, 9, 10];
y_axis = f(x_axis);
hold on, plot(x_axis, y_axis, '.');

for i = 1 : 4
    root = secant(f, x_axis(2 * i - 1), x_axis(2 * i));
    fprintf('root %d : %.10f\n', i, root(end));
end