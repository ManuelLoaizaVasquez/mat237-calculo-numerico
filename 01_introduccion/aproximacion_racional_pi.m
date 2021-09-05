clc;
format long;
p = 22 / 7;

exactitud_absoluta = abs(p - pi);
exactitud_relativa = exactitud_absoluta / pi;
exactitud_digitos = -log10(exactitud_relativa);
digitos = floor(exactitud_digitos);

% Imprimimos variables
disp(exactitud_absoluta);
disp(exactitud_relativa);
disp(exactitud_digitos);
disp(digitos);
