clear
close all
Fs = 1000;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 1024;             % Length of signal
t = (0:L-1)*T;        % Time vectorc
fid = fopen('mysig.bin','r'); mysig = fread(fid, 1024, 'float');
figure 
plot(1000*t(1:100),mysig(1:100))

Ys = fft(mysig);

P2 = abs(Ys/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

figure 
f = Fs*(0:(L/2))/L;
plot(f,P1) 
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
[max,imax] = max(P1);
f(imax)

