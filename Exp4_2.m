f=2;
g=['a', 'b', 'c', 'd', 'e'];
freq=[0.5*f 1*f 1.2*f 2*f 4*f];
cont(1);

for i = 1 : 5
    Dis(freq(i), 2*i+1, g(i));
end

print ('Exp4_2','-dpdf','-fillpage');

function cont(b)
    A=1;
    f=2;
    t = 0 : 0.001 : 1;
    x=A*sin(2*pi*f*t);
    subplot(6, 2, b);
    plot(t, x, 'm', 'LineWidth', 2);
    title({'2012122';'Input Continuous Signal'});
    xlabel('Time'); ylabel('x');
end

function Dis(fs, a, l)
    A=1;
    f1=2;
    Ts=1/fs;
    n=fs;
    n1 = 0 : Ts : n*Ts;
    x=A*sin(2*pi*f1*n1);
    subplot(6, 2, a);
    stem(x, n1, 'm', 'LineWidth', 2);
    title({l;'Discrete Signal'});
    xlabel('Time'); ylabel('x');
    Res(n1, a+1, l);
end

function Res(n1, a, l)
    A=1;
    f1=2;
    X=A*sin(2*pi*f1*n1);
    t1=linspace(0, max(n1), max(n1)/0.001);
    Xr=interp1(n1, X, t1, 'spline');
    subplot(6, 2, a);
    plot(t1, Xr, 'g', 'LineWidth', 3);
    title({l;'Reconstructed Signal'});
    xlabel('Time'); ylabel('Xr');
end