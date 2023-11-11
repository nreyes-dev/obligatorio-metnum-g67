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

R1 = sqrt(A1^2 + B1^2 + (C1 - 6370)^2)
R2 = sqrt(A2^2 + B2^2 + (C2 - 6370)^2)
R3 = sqrt(A3^2 + B3^2 + (C3 - 6370)^2)

c = 299792.458;
d = 0.0001;

t1 = d + R1/c
t2 = d + R2/c
t3 = d + R3/c
t4 = d + R4/c

x0 = [0; 0; 6370; 0];
tol = 1e-6;
max_it = 100;
