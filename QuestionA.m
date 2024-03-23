%Mohammad Abu Shams.
%1200549.
%Sec2.
F1=2;%First Frequency.
F2=50;%Second Frequency.
F3=80;%Third Frequency.
Fs=160;%160 Samples.   
n=0:1/Fs:1;
x1=cos(2*pi*F1*n);
x2=cos(2*pi*F2*n);
x3=cos(2*pi*F3*n);
x=x1+(0.5*x2)+(0.25*x3);
%plot(n,x);%Continous (Additional).
stem(x);%Discrete. 
xlabel('n');
ylabel('x[n]');
title('x[n]');
%DONE



