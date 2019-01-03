%Program P1_1, Question 3
% Generation of a delayed unit sample sequence clf;
% Generate a vector from -10 to 20
n = -10:20;
% Generate the Delayed unit sample sequence
u = [zeros(1,21) 1 zero(1,9)];
% Plot the Delayed unit sample sequence
stem(n,u);
xlabel('Time index n');ylabel('Amplitude');
title('DELAYED Unit Sample Sequence');
axis([-10 20 0 1.2]); 