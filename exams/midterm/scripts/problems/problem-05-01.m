clc;

set(0,'defaulttextInterpreter','latex') 
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0, 'defaultLegendInterpreter','latex');
set(0, 'defaultAxesFontSize', 15)
set(0, 'defaultLineLineWidth', 2.0);

f = @(x) 1./(25 * x.^2 + 16);

interval = [-1 1];
x = linspace(interval(1), interval(2), 4001);
nodes = linspace(4, 60, 4);
len = length(nodes);
ines = zeros(len);

for k = 1 : len
  n = nodes(k);
  p = chebinterp(f, n);
  % Infinite norm error: max|p(x) - f(x)|
  ine = 0;
  for value = x
    ine = max(ine, abs(p(value) - f(value)));
  end
  ines(k) = ine;
end

g = @(x) 1./((1.85).^x);
semilogy(nodes, ines), hold on
semilogy(nodes, g(nodes));
