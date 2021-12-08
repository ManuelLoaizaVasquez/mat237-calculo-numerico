function R = romberg(f, a, b, n)
  R = zeros(n, n);
  % Caso base: Regla del trapecio
  h = b - a;
  R(1, 1) = h * (f(a) + f(b)) / 2;
  % Para cada refinamiento completamos su respectiva fila en la matriz
  for i = 2 : n
    % Anadimos los nuevos puntos
    new_x = ((1 : 2^(i - 2)) - 0.5) * h;
    R(i, 1) = (R(i - 1, 1) + h * sum(f(new_x))) / 2;
    % Completamos a nuestra derecha reutilizando lo precalculado
    for j = 2 : i
      R(i, j) = R(i, j - 1) + (R(i, j - 1) - R(i - 1, j - 1)) / (2^(2 * (j - 1)) - 1);
    end
    % Refinamos
    h = h / 2;
  end
end
