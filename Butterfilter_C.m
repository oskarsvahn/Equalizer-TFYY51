[y,fs] = audioread('1.1World_of_Goo.wav');  %Ger frekvensen 
dataIn = audioread('1.1World_of_Goo.wav');  %Tar in sjävla ljudfilen
T = 1/fs;                                       %time sampeling

[b125,a125] = butter(3,[105/(fs/2), 140/(fs/2)]); %Filter för 125
freqz(b125,a125);
hold on;
dataOut125 = filter(b125,a125,dataIn);

[b250,a250] = butter(4,[200/(fs/2), 350/(fs/2)]);
freqz(b250,a250);
dataOut250 = filter(b250,a250,dataIn);

[b500,a500] = butter(5,[450/(fs/2), 650/(fs/2)]);
freqz(b500,a500);
dataOut500 = filter(b500,a500,dataIn);

[b1000,a1000] = butter(6,[940/(fs/2), 1600/(fs/2)]);
freqz(b1000,a1000);
dataOut1000 = filter(b1000,a1000,dataIn);

[b2000,a2000] = butter(5,[1950/(fs/2), 2300/(fs/2)]);
freqz(b2000,a2000);
dataOut2000 = filter(b2000,a2000,dataIn);

[b3000,a3000] = butter(5,[2800/(fs/2), 3200/(fs/2)]);
freqz(b3000,a3000);
dataOut3000 = filter(b3000,a3000,dataIn);

[b4000,a4000] = butter(5,[3800/(fs/2), 4000/(fs/2)]);
freqz(b4000,a4000);
dataOut4000 = filter(b4000,a4000,dataIn);

[b6000,a6000] = butter(10,[5500/(fs/2), 6500/(fs/2)]);
freqz(b6000,a6000);
dataOut6000 = filter(b6000,a6000,dataIn);

[b8000,a8000] = butter(10,[7800/(fs/2), 9000/(fs/2)]);
freqz(b8000,a8000);
dataOut8000 = filter(b8000,a8000,dataIn);

[b14000,a14000] = butter(10,[13000/(fs/2),16000/(fs/2)]);
freqz(b14000,a14000);
dataOut14000 = filter(b14000,a14000,dataIn);