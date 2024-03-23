%Mohammad Abu Shams 
%1200549
%Sec2
Values_for_M=[1,4,10];
for i=1:length(Values_for_M)
    M=Values_for_M(i);
    b=(1/(M+1))*ones(1,M+1);% Cooficient for X.
    a=1;% Cooficient for Y.
    [H,w]=freqz(b,a,453);
    subplot(length(Values_for_M),1,i);
    plot((w/(pi)),abs(H));
    xlabel('Frequency');
    ylabel('|H(e^{j\omega})|');
    title(['The Filter Frequency Response for M=',num2str(M)]);
end
    