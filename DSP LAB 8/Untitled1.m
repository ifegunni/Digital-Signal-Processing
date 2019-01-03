% Program Q7_25
% Use fir2 to design a linear phase Lowpass
% FIR Digital Filter meeting the design specification given
% in Q7.23.
% - Compute and plot the gain function.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
% Design spec as given in Q7.25.
N = 95;
A = [0.4 0.4 1.0 1.0 0.8 0.8];
F = [0 0.25 0.3 0.45 0.5 1.0];
% Design the Filter
h = fir2(N,F,A);
% Compute and plot the gain response
[g, w] = gain(h,[1]);
figure(1);
plot(w/pi,g);grid;
%axis([0 1 -80 5]);
xlabel('\omega /\pi'); ylabel('Gain in dB');
title('Gain Response');
% Compute the frequency response
w2 = 0:pi/511:pi;
Hz = freqz(h,[1],w2);
% Plot
figure(2);
plot(w2/pi,abs(Hz));grid;
xlabel('\omega /\pi'); ylabel('|H(e^{j\omega})|');
title('|H(e^{j\omega})|');
% Find and plot the phase
figure(3);
Phase = angle(Hz);
plot(w2/pi,Phase);grid;
xlabel('\omega /\pi'); ylabel('Phase (rad)');
title('Phase Response');
figure(4);
UPhase = unwrap(Phase);
plot(w2/pi,UPhase);grid;
xlabel('\omega /\pi'); ylabel('Unwrapped Phase (rad)');
title('Unwrapped Phase Response');