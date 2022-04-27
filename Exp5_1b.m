F=800; %Samplimng Frequency
Ts=1/F; %Sampling Period
dt=0 : Ts : 0.5-Ts; %Signal Duration

x=sin(2*pi*200*dt);
subplot(2, 1, 1);
plot(dt, x, 'r');
title('X(t)');

nfft=length(x); %length of time domain signal
nfft2=2^nextpow2(nfft); %length if signal in power of 2
ff=fft(x, nfft2);
fff=ff(1:nfft2/2);
subplot(2, 1, 2);
plot(abs(fff), 'm');
title('Fourier Transform');

print ('Exp5_1b','-dpdf','-fillpage');
