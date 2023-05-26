x = [2,-2,7,-3,2,4,-6,1];
y = [5,2,4,-6,5,1,-8,0,7,2,9];
[output] = conv(x,y);
n = 1:length(output);
stem(n,output,'filled');