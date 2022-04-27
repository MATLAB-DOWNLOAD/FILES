m = [0 1 1 0 0 0 1 1 1 0 0 0 0 1 1 1 0 1 1];
n = length(m);

x = [];
y = [];
for i=1:n
    x=[x i-1 i];
    if(m(i)==0)
        y=[y 1 1];
    else
        y=[y -1 -1];
    end
end
subplot(3,1,1);
plot(x, y, 'm', 'LineWidth', 3),axis([0, n, -2, 2]);
title('2012122 - Polar NRZ L');

x = [];
y = [];
for i=1:n
    x=[x i-1 i];
    if(m(i)==0)
        y=[y -1 -1];
    else
        y=[y 1 1];
    end
end
subplot(3,1,2);
plot(x, y, 'r', 'LineWidth', 3),axis([0, n, -2, 2]);
title('2012122 - Polar NRZ I');

x = [];
y = [];
for i=1:n
    x=[x i-1 i-1+0.5 i-1+0.5 i];
    if(m(i)==0)
        y=[y -1 -1 0 0];
    else
        y=[y 1 1 0 0];
    end
end
subplot(3,1,3);
plot(x, y, 'b', 'LineWidth', 3),axis([0, n, -2, 2]);
title('2012122 - Polar RZ');

print ('Exp8_Polar_NRZ','-dpdf','-fillpage');