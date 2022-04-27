t = 0 : 0.01 : 3;
f = 1;

X = exp(-2i*pi*f*t);
subplot(2, 1, 1);
plot(t, X, 'm', 'LineWidth', 3)
title('Original plot');
xlabel('t'); ylabel('X (t)');

Y=cumtrapz(X);
subplot(2, 1, 2);
plot(t, Y, 'g', 'LineWidth', 3);
title('Integrated plot');
xlabel('t'); ylabel('Y (t)');

print ('Exp3_1b','-dpdf','-fillpage');
