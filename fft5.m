filterValues=[125,0;
              250,0;
              500,0.1;
              1000,0.3;
              2000,0.8;
              3000,1;
              4000,1.5;
              6000, 2;
              8000,3;
              12000,3;
              20000,3];

x = filterValues(:,1); 
y = filterValues(:,2);
FFTLength=40000;
Fs=44100;

n = 1:1:FFTLength/2;
filter = interp1(x,y,n, 'PCHIP');

plot(x,y,'o',n,filter,':.');
xlim([0 20000]);
title('(Default) Linear Interpolation');

filter = [fliplr(filter), filter ]';

[rawData, Fs]= audioread('Ljudfiler/1.1World_of_Goo.wav');

frec = stft(rawData,Fs,'Window',hann(FFTLength,'periodic'),'OverlapLength',FFTLength/2,'FFTLength',FFTLength);
frec2=frec.*filter;
complexOutput = istft(frec2, Fs,'Window',hann(FFTLength,'periodic'),'OverlapLength',FFTLength/2,'FFTLength',FFTLength);
output=real(complexOutput)+imag(complexOutput);
sound(output, Fs);

