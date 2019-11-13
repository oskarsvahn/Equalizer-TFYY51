filterValues=[0,0.7;
              125,0.8;
              500,1;
              1000, 1.3;
              2000,1.2;
              4000,1.5;
              10000,1.2
              20000, 1];
          
T=4          
x = filterValues(:,1); 
y = filterValues(:,2);
FFTLength=40000;

Fs=44000;
xq = 1:1:FFTLength/2;


filter =[];
filter = interp1(x,y,xq, 'cubic');
filter = [filter, flip(filter)]';
%recObj = audiorecorder(Fs, 8, 1)
%recordblocking(recObj, T);
%rawData = getaudiodata(recObj);%Inspelning
[rawData, Fs]= audioread('Ljudfiler/1.1World_of_Goo.wav');

frec = stft(rawData,Fs,'Window',hann(FFTLength,'periodic'),'OverlapLength',FFTLength/2,'FFTLength',FFTLength);
frec2=frec.*filter;
output=real(istft(frec2, Fs,'Window',hann(FFTLength,'periodic'),'OverlapLength',FFTLength/2,'FFTLength',FFTLength));
sound(output, Fs);


          
          



filter = interp1(x,v,xq, 'cubic');
plot(x,v,'o',xq,filter,':.');
xlim([0 20000]);
title('(Default) Linear Interpolation');