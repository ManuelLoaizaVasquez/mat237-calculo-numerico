clc;

set(0,'defaulttextInterpreter','latex') 
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0, 'defaultLegendInterpreter','latex');
set(0, 'defaultAxesFontSize', 15)
set(0, 'defaultLineLineWidth', 2.0);

interval = [-1 1];
x = linspace(interval(1), interval(2), 41001);
nodes = 10 : 10 : 100;
len = length(nodes);

for m = 1 : 2 : 11
  % Fix f(x) = |x|^m
  f = @(x) abspow(x, m);
  ines = zeros(len);
  % For each n
  for k = 1 : len
    n = nodes(k);
    p = chebinterp(f, n);
    ine = 0;
    % Find max |p(x) - f(x)|
    for value = x
      ine = max(ine, abs(p(value) - f(value)));
    end
    ines(k) = ine;
  end
  loglog(nodes, ines), hold on
end

hold off