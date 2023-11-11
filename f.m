function result = f(v, parte)
% dado un vector v evaluo fi(v) para i=1,2,3,4 siendo fi las ecuaciones del sistema del problema
    c = 299792.458;
    switch parte
        case 1
            A1 = 15600; B1 = 7540; C1 = 20140;
            A2 = 18760; B2 = 2750; C2 = 18610;
            A3 = 17610; B3 = 14630; C3 = 13480;
            A4 = 19170; B4 = 610; C4 = 18390;
            t1 = 0.07074;
            t2 = 0.07220;
            t3 = 0.07690;
            t4 = 0.07242;
        case 2
            datos = calcular_datos_parte2(); 
            A1 = datos(1); B1 = datos(2); C1 = datos(3);
            A2 = datos(4); B2 = datos(5); C2 = datos(6);
            A3 = datos(7); B3 = datos(8); C3 = datos(9);
            A4 = datos(10); B4 = datos(11); C4 = datos(12);
            t1 = datos(13);
            t2 = datos(14);
            t3 = datos(15);
            t4 = datos(16);
    otherwise
        error("elegir_constantes recibio input invalido")
    end

    x = v(1);
    y = v(2);
    z = v(3);
    d = v(4);

    result = [
        sqrt((x-A1)^2 + (y-B1)^2 + (z-C1)^2) - c*(t1 - d);
        sqrt((x-A2)^2 + (y-B2)^2 + (z-C2)^2) - c*(t2 - d);
        sqrt((x-A3)^2 + (y-B3)^2 + (z-C3)^2) - c*(t3 - d);
        sqrt((x-A4)^2 + (y-B4)^2 + (z-C4)^2) - c*(t4 - d);
    ];
endfunction