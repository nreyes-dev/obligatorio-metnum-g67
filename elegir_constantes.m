function result = elegir_constantes(i, parte)
% funcion auxiliar para las derivadas parciales, elige que constantes usar dependiendo de i
    switch parte
        case 1
            A1 = 15600; B1 = 7540; C1 = 20140;
            A2 = 18760; B2 = 2750; C2 = 18610;
            A3 = 17610; B3 = 14630; C3 = 13480;
            A4 = 19170; B4 = 610; C4 = 18390;
        case 2
            datos = calcular_datos_parte2(); 
            A1 = datos(1); B1 = datos(2); C1 = datos(3);
            A2 = datos(4); B2 = datos(5); C2 = datos(6);
            A3 = datos(7); B3 = datos(8); C3 = datos(9);
            A4 = datos(10); B4 = datos(11); C4 = datos(12);
    otherwise
        error("elegir_constantes recibio input invalido")
    end
        
    switch i 
        case 1
            result = [A1, B1, C1]
        case 2
            result = [A2, B2, C2]
        case 3
            result = [A3, B3, C3]
        case 4
            result = [A4, B4, C4]
        otherwise
            error("elegir_constantes recibio input invalido")
    end
endfunction
