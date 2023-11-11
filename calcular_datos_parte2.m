function result = calcular_datos_parte2()
    ro = 26570;
    phi1 = 0;
    phi2 = pi/6;
    phi3 = pi/4;
    phi4 = pi/3;
    theta1 = pi/2
    theta2 = pi
    theta3 = 3*pi/2
    theta4 = 2*pi

    A1 = ro*cos(phi1)*cos(theta1); B1 = ro*cos(phi1)*sin(theta1); C1 = ro*sin(phi1);
    A2 = ro*cos(phi2)*cos(theta2); B2 = ro*cos(phi2)*sin(theta2); C2 = ro*sin(phi2);
    A3 = ro*cos(phi3)*cos(theta3); B3 = ro*cos(phi3)*sin(theta3); C3 = ro*sin(phi3);
    A4 = ro*cos(phi4)*cos(theta4); B4 = ro*cos(phi4)*sin(theta4); C4 = ro*sin(phi4);


    R1 = sqrt(A1^2 + B1^2 + (C1 - 6370)^2)
    R2 = sqrt(A2^2 + B2^2 + (C2 - 6370)^2)
    R3 = sqrt(A3^2 + B3^2 + (C3 - 6370)^2)
    R4 = sqrt(A4^2 + B4^2 + (C4 - 6370)^2)

    c = 299792.458;
    d = 0.0001;

    t1 = d + R1/c
    t2 = d + R2/c
    t3 = d + R3/c
    t4 = d + R4/c

    result = [A1, B1, C1, A2, B2, C2, A3, B3, C3, A4, B4, C4, t1, t2, t3, t4]
endfunction