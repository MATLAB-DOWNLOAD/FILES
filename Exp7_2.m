f1 = 25;
f2 = 5;
t = 0 : 0.001 : 1;
A = 4;

x = A .* sin(2*pi*f1*t) + (A/2);
u = A .* square(2*pi*f2*t);
v = x .* u;

subplot(3, 1, 1);
plot(t, x, 'LineWidth', 2);
title('Carrier Signal - 2012122');

subplot(3, 1, 2);
plot(t, u, 'm', 'LineWidth', 3);
title('Square Pulse - 2012122');

subplot(3, 1, 3);
plot(t, v, 'r', 'LineWidth', 2);
title({'Phase Shift Keying';'PSK Signal - 2012122'});

print ('Exp7_2','-dpdf','-fillpage');