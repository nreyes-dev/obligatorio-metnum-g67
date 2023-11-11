% tol es la tolerancia, max_it el tope de iteraciones
% algoritmo 4.2 de las notas del curso
% Jf es la matriz jacobiana de las funciones f1,f2,f3,f4 del sistema
function x = newton_raphson(x0, f, Jf, tol, max_it, parte)
    x = x0;
    k = 0;

    while norm(f(x, parte)) >= tol && k < max_it
        b = -f(x, parte);
        A = Jf(x, parte);

        % resolver el sistema lineal Ad = b
        d = A \ b;

        x = x + d;
        k = k + 1;
    endwhile
    if k < max_it
        disp("newton raphson se detuvo por criterio de tolerancia")
    else
        disp("newton raphson se detuvo por criterio de maximas iteraciones")
    endif
endfunction
