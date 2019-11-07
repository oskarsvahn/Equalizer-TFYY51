[y,Fs] = audioread('1.1World_of_Goo.wav');  %Läser ljudfil
L = length(y);                              %Längden på y vektorn
T = 1/Fs;                                   %Sampling period
t = (0:L-1)*T;                              %Tids vektorn
