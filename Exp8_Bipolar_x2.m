m = [0 1 1 0 0 0 1 1 1 0 0 0 0 1 1 1 0 1 1];
n = length(m);

x = [];
y = [];
a=1;
for i=1:n
    x=[x i-1 i];
    if(m(i)==0)
        y=[y 0 0];
    else
        y=[y a a];
        a=a*(-1);
    end
end
subplot(2,1,1);
plot(x, y, 'b', 'LineWidth', 3),axis([0, n, -2, 2]);
title('2012122 - Bipolar AMI');

x = [];
y = [];
a=1;
for i=1:n
    x=[x i-1 i];
    if(m(i)==0)
        y=[y a a];
        a=a*(-1);
    else
        y=[y 0 0];
    end
end
subplot(2,1,2);
plot(x, y, 'm', 'LineWidth', 3),axis([0, n, -2, 2]);
title('2012122 - Bipolar Pseudoternary');

print ('Exp8_Bipolar_x2','-dpdf','-fillpage');