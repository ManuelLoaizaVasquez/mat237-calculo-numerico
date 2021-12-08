function print_romberg_errors(R, n, exact_value)
  fprintf('Matriz de errores de Romberg:\n');
  for i = 1 : n
    for j = 1 : i
      if j > 1
        fprintf(' ');
      end
      fprintf('%.6f', abs(R(i, j) - exact_value));
    end
    fprintf('\n');
  end
end
