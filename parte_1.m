x0 = [0; 0; 6370; 0];
tol = 1e-6;
max_it = 100;

solucion = newton_raphson(x0, @f, @jacobiana, tol, max_it, 1);

disp("Solución: \n")
disp(solucion);

% verificar solucion
disp("Verificaciones para la solución: \n")
disp(f(solucion))
