filterValues=[125,1;
              250,1;
              500,1;
              1000,5;
              2000,10;
              3000,15;
              4000,20;
              6000,30;
              8000,40;
              12000,40;
              20000,40];             %Just nu filterv�rden i kolonn 2, t�nker att det blir variabler till sliders sen
                    
x = filterValues(:,1);          %X koordinaterna f�r frekvenstabell
y = filterValues(:,2);          %Vad vi multiplicerar med
FFTLength=40000;                %Punkter i frekvensspektrum

n = 1:1:FFTLength/2;            %Skapar v�rt halva frekvensspektrum

filter = interp1(x,y,n, 'PCHIP');   %skapar ett filter utifr�n v�rdena

plot(x,y,'o',n,filter,':.');        %Plottar bearbetade kurvan
xlim([0 20000]);                    %begr�nsar mellan 0-20000
title('(Default) Linear Interpolation');        %titel p� graf
filter = [fliplr(filter), filter ]';        %Skapar speglat filter med gamla filtret

[rawData, Fs]= audioread('Ljudfiler/1.2Goo_moderate_hearing_loss.wav');      %laddar in ljud

frec = stft(rawData,Fs,'Window',hann(FFTLength,'periodic'),'OverlapLength',FFTLength/2,'FFTLength',FFTLength);  %Skapar f�nster i tidsdom�n och g�r fourieranalys i f�nstret och sen flyttar f�nstret fram�t och upprepar

frec2=frec.*filter;     %applicera filter    

output = istft(frec2, Fs,'Window',hann(FFTLength,'periodic'),'OverlapLength',FFTLength/2,'FFTLength',FFTLength, 'ConjugateSymmetric', true); %lika som tidigare fast tillbaka till tidsdom�n

sound(output, Fs);      %Spelar upp behandlat ljud


          
          