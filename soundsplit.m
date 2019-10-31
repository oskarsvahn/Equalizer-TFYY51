[y,fs] = audioread('World_of_Goo.wav'); % L�ser in ljudfilen
L = length(y);                          % Storleken p� ljudfilen
T = 1/fs;                               % Sampling period
t = (0:L-1)*T;                          % Time vector
matsize = fs/50;                        % Best�mmer matrisstorleken(hur mycket vi delar upp ljudfilen)
split_sound = vec2mat(y,matsize)';      % G�r om ljudfilen till mindre bitar av ljudfilen 
fourier = fft(split_sound,[],1);        % Tar matrisen till frekvensdom�nen
%hitta ett s�tt att g� fr�n fourier tillbaka till ett f�rvr�ngt y
plot (abs(fourier));                    %Nyquistfrekvens?