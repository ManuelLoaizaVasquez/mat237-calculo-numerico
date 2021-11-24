clc;

set(0,'defaulttextInterpreter','latex') 
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0, 'defaultLegendInterpreter','latex');
set(0, 'defaultAxesFontSize', 15)
set(0, 'defaultLineLineWidth', 2.0);

interval = [-1 1];

for n = 30:30:90
    x = linspace(interval(1), interval(2), n + 1);
    w = barycentric_weights(x);
    semilogy(x, abs(w)), hold on
end