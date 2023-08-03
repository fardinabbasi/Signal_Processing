# Signal Processing
## Part 1: Implementing Convolution Function From Scratch
Here is a plot of the result of the convolution between x and y with both the [built-in](https://github.com/fardinabbasi/Signal_Processing/blob/main/Conv.m) and [Scratch](https://github.com/fardinabbasi/Signal_Processing/blob/main/Convolution.m) functions.

$x = [2,-2,7,-3,2,4,-6,1]$

$y = [5,2,4,-6,5,1,-8,0,7,2,9]$

<img src="/readme_images/conv.jpg" >

## Part 2: Analysis of an LTI System
[Adding Noise and Echo](https://github.com/fardinabbasi/Signal_Processing/blob/main/Audio.m) to a [Reading of Persian Poetry](https://github.com/fardinabbasi/Signal_Processing/blob/main/my_sound.wav).
### Sampling
This Audio was read at 44,100Hz using *imread( )* function.
The plot below represents the audio signal with respect to time.
<img src="/readme_images/sound.jpg">
### Adding Echo
In order to create an echo effect, a new signal is defined as follows.

$y[n] = x[n] + \alpha x[n-n_0]$

For a desired 1-second delay, we set the **delay parameter** as $n_0 = F_s = 44100$, and the **attenuation factor** as $\alpha = 0.9$, ensuring that the **echo signal** retains 81% of the **energy** present in the original signal.

Below is a plot showing the echo signal.

<img src="/readme_images/y.jpg" >

### Adding Noise
The noisy signal is generated by adding the echo signal to a noise signal, where the noise has a maximum amplitude of 10% of the maximum amplitude of the echo signal. 
The noise is generated using the *randn( )* function.

Below is a plot showing the noisy signal.

<img src="/readme_images/noisy_y.jpg" >
