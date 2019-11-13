
[b125,a125] = butter(3,[105/(fs/2), 140/(fs/2)]); %Filter för 125
freqz(b125,a125);
hold on;

[b250,a250] = butter(4,[200/(fs/2), 350/(fs/2)]);
freqz(b250,a250);

[b500,a500] = butter(5,[450/(fs/2), 650/(fs/2)]);
freqz(b500,a500);

[b1000,a1000] = butter(6,[940/(fs/2), 1600/(fs/2)]);
freqz(b1000,a1000);

[b2000,a2000] = butter(5,[1950/(fs/2), 2300/(fs/2)]);
freqz(b2000,a2000);

[b3000,a3000] = butter(5,[2800/(fs/2), 3200/(fs/2)]);
freqz(b3000,a3000);

[b4000,a4000] = butter(5,[3800/(fs/2), 4000/(fs/2)]);
freqz(b4000,a4000);

[b6000,a6000] = butter(10,[5500/(fs/2), 6500/(fs/2)]);
freqz(b6000,a6000);

[b8000,a8000] = butter(10,[7800/(fs/2), 9000/(fs/2)]);
freqz(b8000,a8000);

[b12000,a12000] = butter(10,[11000/(fs/2),14500/(fs/2)]);
freqz(b12000,a12000);

[b20000,a20000] = butter(10,[18000/(fs/2),23000/(fs/2)]);
freqz(b20000,a20000);

dataOut125 = filter(b125,a125,dataIn);
dataOut250 = filter(b250,a250,dataIn);
dataOut500 = filter(b500,a500,dataIn);
dataOut1000 = filter(b1000,a1000,dataIn);
dataOut2000 = filter(b2000,a2000,dataIn);
dataOut3000 = filter(b3000,a3000,dataIn);
dataOut4000 = filter(b4000,a4000,dataIn);
dataOut6000 = filter(b6000,a6000,dataIn);
dataOut8000 = filter(b8000,a8000,dataIn);
dataOut14000 = filter(b12000,a12000,dataIn);
dataOut20000 = filter(b20000,a20000,dataIn);

[y,fs] = audioread('1.1World_of_Goo.wav');  %Ger frekvensen 
dataIn = audioread('1.1World_of_Goo.wav');  %Tar in sjävla ljudfilen
T = 1/fs;                                       %time sampeling
