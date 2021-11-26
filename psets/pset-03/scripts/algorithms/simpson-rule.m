function S = simpson_rule(f, a, b, n)
  h = (b - a) / (2 * n);
  x_odd = [a + h : 2 * h : b - h];
  x_even = [a + 2 * h : 2 * h : b - 2 * h];
  S = h * (f(a) + f(b) + 4 * sum(f(x_odd)) + 2 * sum(f(x_even))) / 3;
end
