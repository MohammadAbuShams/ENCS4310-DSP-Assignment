%Mohammad Abu Shams 
%1200549
%Sec2
Values_for_M=[1,4,10];
for i=1:length(Values_for_M)
    M=Values_for_M(i);
    b=(1/(M+1))*ones(1,M+1);% Cooficient for X.
    a=1;% Cooficient for Y.
    y=filter(b,a,x);
    subplot(length(Values_for_M),1,i);
    stem(y);
    %plot(n,y);%Additional 
    xlabel('t');
    ylabel('y[t]');
    title(['The response (output sequence y[t]) for M=',num2str(M)]);
end

    
