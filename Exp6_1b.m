% Amplitude Modulation

t = 0 : 0.001 : 0.8;
f1 = 5;
f2 = 60;
x1 = sin(2*pi*f1*t); % message signal
subplot(3,1,1);
plot(t, x1, 'g', 'LineWidth', 2);
title("Message Signal - 2012122");

x2 = sin(2*pi*f2*t); % carrier signal
subplot(3, 1, 2);
plot(t, x2, 'm', 'LineWidth', 1.5);
title("Carrier Signal - 2012122");

m = 0.5;
ams = (1 + m.*x1).*x2; % amplitude modulated signal
subplot(3, 1, 3);
plot(t, ams, 'r', 'LineWidth', 1.5);
title("Amplitude Modulated Signal - 2012122");

print ('Exp6_1b','-dpdf','-fillpage');