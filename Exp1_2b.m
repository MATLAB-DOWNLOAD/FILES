t = 0 : 0.01 : 4;
x = 5 * exp (-0.2 * t);
plot (t, x);
title ('e^()');
xlabel ('Time -> t (ms)');
ylabel ('x(t) = 5 * exp(-0.2*t)');
print ('Exp1_2b','-dpdf','-fillpage');
