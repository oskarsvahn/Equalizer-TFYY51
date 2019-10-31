[y,Fs] = audioread('World_of_Goo.wav');    %Läser in ljudfilen
matsize = Fs/50;                           %Bestämmer matrisstorleken(hur mycket vi delar upp ljudfilen)
split_sound = vec2mat(y,matsize)';         %Gör om ljudfilen till mindre bitar av ljudfilen 
