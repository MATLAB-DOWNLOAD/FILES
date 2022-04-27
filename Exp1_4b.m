n=-100:100;
d=[zeros(1,100), ones(1,101)];
stem(n,d);
title ('-100 to 100 discrete');
xlabel ('n');
ylabel ('d[n]');
print ('Exp1_4b','-dpdf','-fillpage');
