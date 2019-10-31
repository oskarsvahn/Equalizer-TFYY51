[y,fs] = audioread('World_of_Goo.wav'); % Läser in ljudfilen
L = length(y);                          % Storleken på ljudfilen
T = 1/fs;                               % Sampling period
t = (0:L-1)*T;                          % Time vector
matsize = fs/50;                        % Bestämmer matrisstorleken(hur mycket vi delar upp ljudfilen)
split_sound = vec2mat(y,matsize)';      % Gör om ljudfilen till mindre bitar av ljudfilen 
fourier = fft(split_sound,[],1);        % Tar matrisen till frekvensdomänen
%hitta ett sätt att gå från fourier tillbaka till ett förvrängt y
plot (abs(fourier));                    %Nyquistfrekvens?