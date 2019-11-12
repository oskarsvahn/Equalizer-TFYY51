fc = 300;
fs = 42000; %kommer behövas ändra beroende på vilken samplinghastighet vi har.

[b125,a125] = butter(5,[120/(fs/2), 130/(fs/2)]); %Filter för 125
freqz(b125,a125);

[b250,a250] = butter(5,[245/(fs/2), 255/(fs/2)]);
freqz(b250,a250);

[b500,a500] = butter(5,[495/(fs/2), 505/(fs/2)]);
freqz(b500,a500);

[b1000,a1000] = butter(5,[995/(fs/2), 1005/(fs/2)]);
freqz(b1000,a1000);

[b2000,a2000] = butter(5,[1995/(fs/2), 2005/(fs/2)]);
freqz(b2000,a2000);

[b3000,a3000] = butter(5,[2995/(fs/2), 3005/(fs/2)]);
freqz(b3000,a3000);

[b4000,a4000] = butter(5,[3995/(fs/2), 4005/(fs/2)]);
freqz(b4000,a4000);

[b6000,a6000] = butter(5,[5995/(fs/2), 6005/(fs/2)]);
freqz(b6000,a6000);

[b8000,a8000] = butter(5,[7995/(fs/2), 8005/(fs/2)]);
freqz(b8000,a8000);

[b14000,a14000] = butter(5,[13995/(fs/2), 14005/(fs/2)]);
freqz(b14000,a14000);

dataIn = randn(1000,1);
dataOut = filter(b,a,dataIn);