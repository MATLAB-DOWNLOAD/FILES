f1 = 25;
f2 = 5;
t = 0 : 0.001 : 1;
A = 4;

x = A .* sin(2*pi*f1*t) + (A/2);
u = A/2 .* square(2*pi*f2*t) + (A/2);
v = x .* u;

subplot(3, 1, 1);
plot(t, x, 'LineWidth', 2);
title('Carrier Signal');

subplot(3, 1, 2);
plot(t, u, 'm', 'LineWidth', 2);
title('Square Pulse');

subplot(3, 1, 3);
plot(t, v, 'r', 'LineWidth', 2);
title({'Amplitude Shift Keying';'ASK Signal'});

print ('Exp7_1','-dpdf','-fillpage');
