function result = jacobiana(v, parte)
% dado un vector v,  evaluo Jf(v) siendo Jf la matriz jacobiana construida a partir de las derivadas parciales de f1, f2, f3, f4
    result = [
        derivada_parcial_x(1, v, parte), derivada_parcial_y(1, v, parte), derivada_parcial_z(1, v, parte), derivada_parcial_d(1, v);
        derivada_parcial_x(2, v, parte), derivada_parcial_y(2, v, parte), derivada_parcial_z(2, v, parte), derivada_parcial_d(2, v);
        derivada_parcial_x(3, v, parte), derivada_parcial_y(3, v, parte), derivada_parcial_z(3, v, parte), derivada_parcial_d(3, v);
        derivada_parcial_x(4, v, parte), derivada_parcial_y(4, v, parte), derivada_parcial_z(4, v, parte), derivada_parcial_d(4, v);
    ];
endfunction