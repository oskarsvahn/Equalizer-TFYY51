[y,Fs] = audioread('1.1World_of_Goo.wav');  %L�ser ljudfil
L = length(y);                              %L�ngden p� y vektorn
T = 1/Fs;                                   %Sampling period
t = (0:L-1)*T;                              %Tids vektorn
