function T = trapezoid_rule(f, a, b, n)
  h = (b - a) / n;
  x = [a + h : h : b - h];
  T = h * ((f(a) + f(b)) / 2 + sum(f(x)));
end
