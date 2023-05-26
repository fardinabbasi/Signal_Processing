clear
clc

[x,Fs] = audioread('my_sound.wav');
x = x(:,1);
plt(Fs,x);
title('x');
%sound(x,Fs);
audiowrite('x.wav',x,Fs);

h(1) = 1;
h(Fs+1) = 0.9;    %alpha
y = conv(x,h);
max_y = max(max(y),-min(y));
y = y / max_y;   %rescale / data clip
audiowrite('y.wav',y,Fs);
figure();
plt(Fs,y);
title('y');
%sound(y,Fs);

noisy_y = y + 0.1*rand(length(y),1);
audiowrite('noisy_y.wav',noisy_y,Fs);
figure();
plt(Fs,noisy_y);
title('noisy y');
%sound(noisy_y,Fs);

[a,n0] = Recover(x,noisy_y,Fs);
fprintf('a = %f  &  n0 = %f\n', a, n0)