clc;

set(0,'defaulttextInterpreter','latex') 
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0, 'defaultLegendInterpreter','latex');
set(0, 'defaultAxesFontSize', 15)
set(0, 'defaultLineLineWidth', 2.0);

f = @(x) tanh(x);
interval = [0.5 2];
fplot(f, interval), hold on

for n = 2 : 4
  x = linspace(interval(1), interval(2), n + 1)';
  p = polyinterp(x, f(x));
  fplot(p, interval), hold on
end

hold off