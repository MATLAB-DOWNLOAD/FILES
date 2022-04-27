phi = pi/4 ;
n = -4 : 0.01 : 4 ;
f=4; fs=8;
t=2*pi*(f/fs)*n;

x1 = 5.3 * cos(t+phi);
x2 = 4 * cos(t);

subplot (2,2,1);
plot(n,x1); title('x1');
xlabel('time'); ylabel('amplitude');

subplot (2,2,2);
plot(n,x2); title('x2');
xlabel('time'); ylabel('amplitude');

x3 = x1.*x2;
subplot (2,2,3);
plot(n,x3);
title('Multiplication of signals'); 
xlabel('time'); ylabel('amplitude');

x4 = x1 + x2;
subplot (2,2,4);
plot(n,x4);
title('Addition of signals'); 
xlabel('time'); ylabel('amplitude');

print ('Exp2_1a','-dpdf','-fillpage');
