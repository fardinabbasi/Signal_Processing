function []=plt(Fs,x)
    t = 0:1/Fs:length(x)/Fs;  %scales to seconds 
    t = t(2:end);    %modify vector length
    plot(t,x);
    xlabel('time(s)');
end