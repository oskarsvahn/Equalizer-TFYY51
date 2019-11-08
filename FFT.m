
%load ljud.wav



dB=0.8
Fs = 44000;    %Samplingshastighet
filterValues=[0,1;
              600,0.1;
              1000,10;
              2000,100;
              4000,2;
              10000,0.5]
endFilter=1
T=1           %Tid inspelning
filter=[]
%recObj = audiorecorder(Fs, 8, 1)
%recordblocking(recObj, T);
%rawData = getaudiodata(recObj);%Inspelning
[rawData, Fs]= audioread('1.1World_of_Goo.wav');
L=length(rawData);
nfft=2^nextpow2(L);
Y=fft(rawData,nfft);              %Foriertransform av ljud
f = Fs/2*linspace(0,1,nfft/2+1);
plot(f,2*abs(Y(1:nfft/2+1)))                 %Plotta ut i frekvensdomän
%plot(rawData)
%plot(abs(frec))
hold on                        %Kommand för flera grafer
%filter=linspace(0. 3,2,length(frec));
%scaling=length(frec)/(2*20000)
%filterValues*scaling
% for i = 1:size(filterValues, [1])
%    if i+1>size(filterValues, [1])
%        number=length(rawData)/2-filterValues(i,1);
%        filter=[filter, linspace(filterValues(i, 2),endFilter, number)];
%    else
%        number=filterValues(i+1,1)-filterValues(i,1);
%        filter=[filter, linspace(filterValues(i, 2),filterValues(i+1, 2), number)];
%    end
% end
% filter=[filter,flip(filter)];
% %filter=[linspaceFilterdB1,Filterdb2.4,Fs*T/2)',linspace(1,1,Fs*T/2)']    %Skapande av filter
% 
% %filter=[linspace(1,1,Fs*T/2)',linspace(1,1,Fs*T/2)']    %Skapande av filter
% frec2 = frec.*filter';           %Elementvis mult, frekvens med filter
% 
% 
% %frec2(abs(frec2)<0.5)=dB/abs(frec2)
% %sound(rawData, Fs);             %Spela upp originalljudet
% plot(abs(frec2))               %Plotta frekvensspektrum med pålagt filter
% 
% pause(2)                       %Vänta 2 sekunder
% complexSoundout=ifft(frec2);
% %sound(complexSoundout, Fs)
% soundout=real(complexSoundout);
% soundout(soundout>dB)=dB;        %begränsa ljudnåvån
% soundout(soundout<-dB)=-dB;
% sound(soundout, Fs)          %Spela upp förvrängt ljud
% %plot(soundout)
% hold off
% 
