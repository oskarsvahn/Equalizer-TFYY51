[y,fs] = audioread('1.1World_of_Goo.wav');  %Ger frekvensen 
dataIn = audioread('1.1World_of_Goo.wav');  %Tar in sjävla ljudfilen
T = 1/fs;                                       %time sampeling
dataOut = filter(b,a,dataIn);

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

[b14000,a14000] = butter(10,[13000/(fs/2),16000/(fs/2)]);
freqz(b14000,a14000);

