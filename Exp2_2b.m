n = 0 : 0.01 : 2 ;
A = 1 ; 
F = 2 ;

x1=A*cos(2*pi*f*n); %original
subplot(2,2,1);
stem(n, x1, 'b', 'LineWidth', 0.5);
title('Original');
xlabel('time'); ylabel('amplitude');

m=n+2; %Time delay by 2 x2=A*cos (2*pi*f*m);
x2=A*cos(2*pi*f*m);
subplot (2,2,2);
stem(m, x2, 'g', 'LineWidth', 0.5);
title('Time delayed by 2');
xlabel('time'); ylabel('amplitude');

x3=A*cos(2*pi*f*(1/2)*n);%expand by 2
subplot(2,2,3);
stem(n, x3, 'm', 'LineWidth', 0.5);
title('Expanded by 2');
xlabel('time'); ylabel('amplitude');

x4=A*cos(2*pi*f*2*n); %compress by 2
subplot(2,2,4); 
stem(n, x4, 'r', 'LineWidth', 0.5);
title('Compressed by 2');
xlabel('time'); ylabel('amplitude');

print ('Exp2_2b','-dpdf','-fillpage');
