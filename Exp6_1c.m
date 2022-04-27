% Phase Modulation

t = 0 : 0.001 : 0.6;
f1 = 5;
f2 = 60;
x1 = sin(2*pi*f1*t); % message signal
subplot(3,1,1);
plot(t, x1, 'g', 'LineWidth', 2);
title("Message Signal");

x2 = sin(2*pi*f2*t); % carrier signal
subplot(3, 1, 2);
plot(t, x2, 'm', 'LineWidth', 1.7);
title("Carrier Signal");

m = 40;
pms=sin(2*pi*f2*t + m.*x1); % phase modulated signal
subplot(3, 1, 3);
plot(t, pms, 'r', 'LineWidth', 1.2);
title("Phase Modulated Signal");

print ('Exp6_1c','-dpdf','-fillpage');
