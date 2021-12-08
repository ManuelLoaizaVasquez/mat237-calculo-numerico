function print_romberg(R, n)
  fprintf('Matriz de Romberg:\n');
  for i = 1 : n
    for j = 1 : i
      if j > 1
        fprintf(' ');
      end
      fprintf('%.6f', R(i, j));
    end
    fprintf('\n');
  end
end
