function print_tables(f, a, b, n, exact_value)
  R = romberg(f, a, b, n);
  print_romberg(R, n);
  print_romberg_errors(R, n, exact_value);
end
