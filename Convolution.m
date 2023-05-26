function [conv] = Convolution(x,y)
    conv_len = length(x)+length(y);
    x(conv_len) = 0;       %extend
    y(conv_len) = 0;
    result = 0;
    for n = 1:conv_len
        for i = 1:n-1      %x(1) till y(1)
            result = result + x(i)*y(n-i);
        end
        conv(n) = result;
        result = 0;
    end
    n = 1:conv_len;
    stem(n,conv,'filled'); %plot
end