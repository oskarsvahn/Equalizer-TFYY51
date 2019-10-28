


Fs = 10000    %Samplingshastighet
T=1           %Tid inspelning
recObj = audiorecorder(Fs, 8, 1)
recordblocking(recObj, T);
rawData = getaudiodata(recObj);%Inspelning
frec=fft(rawData)              %Foriertransform av ljud
plot(abs(frec))                %Plotta ut i frekvensdomän
hold on                        %Kommand för flera grafer
filter=linspace(1,1,10000)'%Skapande av filter
frec2 = frec.*filter           %Elementvis mult, frekvens med filter
sound(rawData, Fs)             %Spela upp originalljudet
plot(abs(frec2))               %Plotta frekvensspektrum med pålagt filter
pause(2)                       %Vänta 2 sekunder
sound(ifft(frec2), Fs)          %Spela upp förvrängt ljud