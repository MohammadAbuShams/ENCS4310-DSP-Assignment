%Mohammad Abu Shams 
%1200549
%Sec2
n=0:1/Fs:1;
N=length(n);
figure;
b=(1/(15+1))*ones(1,15+1);% Cooficient for X.
a=1;% Cooficient for Y.
y=filter(b,a,x);
Y=fft(y);
plot(abs(Y)/N); 
xlabel('frequency');
ylabel('|X(e^{j\omega})|');
title('input frequency spectrum for M=15');
figure;
plot(n,y);
xlabel('Time');
ylabel('Amplitude');
title('y(t)');
figure;
X=fft(x);
plot(abs(X)/N); 
xlabel('frequency');
ylabel('|X(e^{j\omega})|');
title('input frequency spectrum for M=15');
