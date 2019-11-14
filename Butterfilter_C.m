[y,fs] = audioread('1.1World_of_Goo.wav');  %Ger frekvensen 
T = 1/fs;                                       %time sampeling


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

[b20000,a20000] = butter(9,[18000/(fs/2),21000/(fs/2)]);
freqz(b20000,a20000);

dataOut125 = filter(b125,a125,y);
dataOut250 = filter(b250,a250,y);
dataOut500 = filter(b500,a500,y);
dataOut1000 = filter(b1000,a1000,y);
dataOut2000 = filter(b2000,a2000,y);
dataOut3000 = filter(b3000,a3000,y);
dataOut4000 = filter(b4000,a4000,y);
dataOut6000 = filter(b6000,a6000,y);
dataOut8000 = filter(b8000,a8000,y);
dataOut14000 = filter(b12000,a12000,y);
dataOut20000 = filter(b20000,a20000,y);

A = 0;
B = 0;
C = 0;
D = 0;
E = 0;
F = 0;
G = 0;
H = 1;
I = 1;
J = 1;
K = 1;

dataOut = A*dataOut125+B*dataOut250+C*dataOut500+D*dataOut1000+E*dataOut2000+F*dataOut3000+G*dataOut4000+H*dataOut6000+I*dataOut8000+J*dataOut14000+K*dataOut20000;

