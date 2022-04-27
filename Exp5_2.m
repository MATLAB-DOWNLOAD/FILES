N=2165;
n=0:N-1;
w=7*pi/10;
x=sin(w*n)+10*sin(2*w*n);
s=spectrogram(x);
spectrogram(x, 'yaxis');
title('2012122');

print ('Exp5_2','-dpdf','-fillpage');