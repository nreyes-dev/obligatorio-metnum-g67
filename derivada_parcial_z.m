function result = derivada_parcial_z(i, v, parte)
% calcula la derivada parcial de fi con respecto a z evaluada en un vector v
    constantes = elegir_constantes(i, parte)
    A = constantes(1)
    B = constantes(2)
    C = constantes(3)
    % t = constantes(4) % t no aparece en la expresion

    x = v(1);
    y = v(2);
    z = v(3);
    % d = v(4); % d resulta no aparecer en la expresion

    result = (z-C)/sqrt((x-A)^2 + (y-B)^2 + (z-C)^2)
endfunction
