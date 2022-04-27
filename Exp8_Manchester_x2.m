m = [0 1 1 0 0 0 1 1 1 0 0 0 0 1 1 1 0 1 1];
n = length(m);

x = [];
y = [];
for i=1:n
    x=[x i-1 i-1+0.5 i-1+0.5 i];
    if(m(i)==0)
        y=[y 1 1 -1 -1];
    else
        y=[y -1 -1 1 1];
    end
end
subplot(2,1,1);
plot(x, y, 'g', 'LineWidth', 3),axis([0, n, -2, 2]);
title('Manchester');

x = [];
y = [];
for i=1:n
    x=[x i-1 i-1+0.5 i-1+0.5 i];
    if(m(i)==0)
        y=[y -1 -1 1 1];
    else
        y=[y 1 1 -1 -1];
    end
end
subplot(2,1,2);
plot(x, y, 'r', 'LineWidth', 3),axis([0, n, -2, 2]);
title('Differential Manchester');

print ('Exp8_Manchester_x2','-dpdf','-fillpage');
