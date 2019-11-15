
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
              20000,40];             %Just nu filtervärden i kolonn 2, tänker att det blir variabler till sliders sen
                    
x = filterValues(:,1);          %X koordinaterna för frekvenstabell

filterValues=[125,0;
              250,0;
              500,0.1;
              1000,0.3;
              2000,0.8;
              3000,1;
              4000,1.5;
              6000, 2;
              8000,1;
              12000,0.5;
              20000,0];             %Just nu filtervï¿½rden i kolonn 2(ger diskant ljud just nu), tï¿½nker att det blir variabler till sliders sen
          
x = filterValues(:,1);          %X koordinaterna fï¿½r frekvenstabell

y = filterValues(:,2);          %Vad vi multiplicerar med
FFTLength=40000;                %Punkter i frekvensspektrum

n = 1:1:FFTLength/2;            %Skapar vårt halva frekvensspektrum

filter = interp1(x,y,n, 'PCHIP');   %skapar ett filter utifrån värdena

plot(x,y,'o',n,filter,':.');        %Plottar bearbetade kurvan
xlim([0 20000]);                    %begränsar mellan 0-20000
title('(Default) Linear Interpolation');        %titel på graf
filter = [fliplr(filter), filter ]';        %Skapar speglat filter med gamla filtret


[rawData, Fs]= audioread('Ljudfiler/1.2Goo_moderate_hearing_loss.wav');      %laddar in ljud

[rawData, Fs]= audioread('Ljudfiler/Talk1.wav');      %laddar in ljud

frec = stft(rawData,Fs,'Window',hann(FFTLength,'periodic'),'OverlapLength',FFTLength/2,'FFTLength',FFTLength);  %Skapar fönster i tidsdomän och gör fourieranalys i fönstret och sen flyttar fönstret framåt och upprepar

frec2=frec.*filter;     %applicera filter    

output = istft(frec2, Fs,'Window',hann(FFTLength,'periodic'),'OverlapLength',FFTLength/2,'FFTLength',FFTLength, 'ConjugateSymmetric', true); %lika som tidigare fast tillbaka till tidsdomän

sound(output, Fs);      %Spelar upp behandlat ljud


          
          



