t = 0 : 0.01 : 4;
x = exp (-0.01 * t);
plot (t, x);
title ('2012122');
xlabel ('Time -> t (ms)');
ylabel ('x(t) = e^(-0.01*t)');
print ('Exp1_2a','-dpdf','-fillpage');