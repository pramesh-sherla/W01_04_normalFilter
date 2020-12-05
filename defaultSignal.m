%% defining the Parameters for signal.
h2r = 2 * pi;
Fs = 48000;
tStop = 5;
dt = 1/Fs;

%% Default values for signals.

signalFreq = 1;
noiseFreq = 50;

signalAmp = 10;
noiseAmp = 1;

%% making the discreate transfer function 

sys = tf([1 0.4],[1 -0.5 0.25],dt,'Variable','z^-1');

figure(1); bode(sys);
figure(2); step(sys);


