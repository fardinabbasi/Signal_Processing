function [a,n0]=Recover(x,y,Fs)
    n0 = (length(y)-length(x))/Fs;
    x(length(y)) = 0;   %extend
    z = y-x;
    a = max(z)/max(x);
end 