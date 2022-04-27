t = 0 : 0.01 : 10;
f=1;

a1=1;
x1=exp(f*a1*t); x2=2*cos(2*pi*f*a1*t);
subplot(4, 2, 1); plot(t, x1, 'm', 'LineWidth', 3);
title('Original Signal - x1');

subplot(4, 2, 2); plot(t, x2, 'm', 'LineWidth', 1.5);
title('Original Signal - x2');

a2=2;
y1=exp(f*a2*t); y2=2*cos(2*pi*f*a2*t);
subplot(4, 2, 3); plot(t, y1, 'g', 'LineWidth', 3);
title('x1 scaled by 2');

subplot(4, 2, 4); plot(t, y2, 'g', 'LineWidth', 1.5);
title('x2 scaled by 2');

a3=1/2;
z1=exp(f*a3*t); z2=2*cos(2*pi*f*a3*t);
subplot(4, 2, 5); plot(t, z1, 'c', 'LineWidth', 3);
title('x1 scaled by 1/2');

subplot(4, 2, 6); plot(t, z2, 'c', 'LineWidth', 1.5);
title('x2 scaled by 1/2');

a4=1/4;
w1=exp(f*a4*t); w2=2*cos(2*pi*f*a4*t);
subplot(4, 2, 7); plot(t, w1, 'r', 'LineWidth', 3);
title('x1 scaled by 1/4');

subplot(4, 2, 8); plot(t, w2, 'r', 'LineWidth', 1.5);
title('x2 scaled by 1/4');

print ('Exp4_1','-dpdf','-fillpage');
