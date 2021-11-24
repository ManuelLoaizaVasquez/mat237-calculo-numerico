clc;

set(0,'defaulttextInterpreter','latex') 
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0, 'defaultLegendInterpreter','latex');
set(0, 'defaultAxesFontSize', 15)
set(0, 'defaultLineLineWidth', 2.0);

f = @(x) 1./(x.^2 + 16);
interval = [-1 1];
fplot(f, interval), hold on
for n = 1 : 5
  p = chebinterp(f, n);
  fplot(p, interval), hold on
end
hold off