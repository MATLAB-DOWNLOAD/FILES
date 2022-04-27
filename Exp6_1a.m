% Frequency Modulation

t=0:0.001:0.5;
f1=5;
f2=60;
x1=sin(2*pi*f1*t); % message signal
subplot(3,1,1);
plot(t, x1, 'g', 'LineWidth', 2);
title("Message Signal");

x2=sin(2*pi*f2*t); % carrier signal
subplot(3, 1, 2);
plot(t, x2, 'm', 'LineWidth', 1.5);
title("Carrier Signal");

m=8;
fms=sin((2*pi*f2*t) + (m.*x1)); % frequency modulated signal
subplot(3, 1, 3);
plot(t, fms, 'r', 'LineWidth', 1.5);
title("Frequency Modulated Signal");

print ('Exp6_1a','-dpdf','-fillpage');
