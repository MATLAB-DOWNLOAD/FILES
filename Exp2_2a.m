t = 0 : 0.01 : 3 ;
A = 1 ;
f = 2 ;

x1=A*sin (2*pi*f*t); %original
subplot (2,2,1);
plot(t, x1, 'b', 'LineWidth', 1.5);
title('2012122 X(t)=A*sin(2*pi*f*t)');
xlabel('time'); ylabel('amplitude');

m=t+2;
x2=A*sin(2*pi*f*m); %Time delay by 2
subplot (2,2,2);
plot (m, x2, 'g', 'LineWidth', 1.5);
title('Time delayed by 2');
xlabel('time'); ylabel('amplitude');

x3=A*sin(2*pi*f*(1/2)*t); %expanded by 2
subplot (2,2,3);
plot(t, x3, 'm', 'LineWidth', 1.5);
title('expanded by 2');
xlabel('time'); ylabel('amplitude');

x4=A*sin(2*pi*f*2*t); %compress by 2
subplot (2,2,4);
plot(t, x4, 'b', 'LineWidth', 1.5);
title('compressed by 2');
xlabel('time'); ylabel('amplitude');

print ('Exp2_2a','-dpdf','-fillpage');