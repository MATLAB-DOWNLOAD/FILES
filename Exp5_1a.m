F=800; %Sampling Frequency
Ts=1/F; %Sampling Period
dt=0 : Ts : 0.4-Ts; %Signal Duration

x=cos(2*pi*100*dt) + cos(2*pi*500*dt);
subplot(2, 1, 1);
plot(dt, x, 'b');
title('2012122 - X(t)');

nfft=length(x); %length of time domain signal
nfft2=2^nextpow2(nfft); %length of signal in power of 2
ff=fft(x, nfft2);
fff=ff(1:nfft2/2);
subplot(2, 1, 2);
plot(abs(fff), 'r');
title('2012122 - Fourier Transform');

print ('Exp5_1a','-dpdf','-fillpage');