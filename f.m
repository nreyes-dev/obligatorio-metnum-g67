function result = f(v)
% dado un vector v evaluo fi(v) para i=1,2,3,4 siendo fi las ecuaciones del sistema del problema
    A1 = 15600; B1 = 7540; C1 = 20140;
    A2 = 18760; B2 = 2750; C2 = 18610;
    A3 = 17610; B3 = 14630; C3 = 13480;
    A4 = 19170; B4 = 610; C4 = 18390;
    t1 = 0.07074;
    t2 = 0.07220;
    t3 = 0.07690;
    t4 = 0.07242;
    c = 299792.458;

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