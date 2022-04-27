t = -100 : 100;
a = 0.1*t;

x1 = exp(-a).*sin(0.6 * t);
x2 = t>=0;

subplot (2,2,1);
plot(t, x1, 'b', 'LineWidth', 1.5); title('x1');
xlabel('time'); ylabel('amplitude');

subplot (2,2,2);
plot(t, x2, 'm', 'LineWidth', 1.5); title('x2');
xlabel('time'); ylabel('amplitude');

x3 = x1.*x2;
subplot (2,2,3);
plot(t, x3, 'g', 'LineWidth', 1.5); title('Multiplication of signals');
xlabel('time'); ylabel('amplitude');

x4=x1+x2;
subplot(2,2,4);
plot (t, x4, 'r', 'LineWidth', 1.5); title('           Addition of signals');
xlabel('time'); ylabel('amplitude');

print ('Exp2_1b','-dpdf','-fillpage');
