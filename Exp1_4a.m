n=-100:100;
d=[zeros(1,100), 1, zeros(1,100)];
stem(n,d);
title ('2012122');
xlabel ('n');
ylabel ('d[n]');
print ('Exp1_4a','-dpdf','-fillpage');