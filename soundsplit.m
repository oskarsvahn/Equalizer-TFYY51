[y,Fs] = audioread('World_of_Goo.wav');    %L�ser in ljudfilen
matsize = Fs/50;                           %Best�mmer matrisstorleken(hur mycket vi delar upp ljudfilen)
split_sound = vec2mat(y,matsize)';         %G�r om ljudfilen till mindre bitar av ljudfilen 
