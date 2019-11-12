fc = 300;
fs = 1000;

[b,a] = butter(6,[fc, fs]);
freqz(b,a)
dataIn = randn(1000,1);
dataOut = filter(b,a,dataIn);