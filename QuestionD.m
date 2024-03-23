%Mohammad Abu Shams 
%1200549
%Sec2
n=0:1/Fs:1;
N=length(n);
Values_for_M=[1,4,10];
figure;
X=fft(x);
plot(abs(X)/N); 
xlabel('frequency');
ylabel('|X(e^{j\omega})|');
title('input frequency spectrum');
figure;
for i=1:length(Values_for_M)
    M=Values_for_M(i);
    b=(1/(M+1))*ones(1,M+1);% Cooficient for X.
    a=1;% Cooficient for Y.
    X=fft(x);
    y=filter(b,a,x);
    Y=fft(y);
    subplot(length(Values_for_M),1,i);
    plot(abs(Y)/N);
    xlabel('frequency');
    ylabel('|Y(e^{j\omega})|');
    title(['output frequency spectrum for M=',num2str(M)]);
end

