t = 0 : 0.01 : 3;
f = 1;
X = sin(2*pi*f*t);

x1 = real(X);
subplot(2,1,1);
plot(t, x1, 'b', 'LineWidth', 3);
title('Real (X)');
xlabel('t'); ylabel('Real___X(t)__');

x2 = imag(X);
subplot(2,1,2);
plot(t, x2, 'r', 'LineWidth', 3);
title('Imaginary (X)');
xlabel('t'); ylabel('Imaginary___X(t)__');

print ('Exp3_2a','-dpdf','-fillpage');
