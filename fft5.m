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
              20000,3];             %Just nu filtervärden i kolonn 2(ger diskant ljud just nu), tänker att det blir variabler till sliders sen
          
          
x = filterValues(:,1);          %X koordinaterna för frekvenstabell
y = filterValues(:,2);          %Vad vi multiplicerar med
FFTLength=40000;                %Punkter i frekvensspektrum

n = 1:1:FFTLength/2;            %Skapar vårt halva frekvensspektrum

filter = interp1(x,y,n, 'cubic');   %skapar ett filter utifrån värdena

plot(x,y,'o',n,filter,':.');        %Plottar bearbetade kurvan
xlim([0 20000]);                    %begränsar mellan 0-20000
title('(Default) Linear Interpolation');        %titel på graf
filter = [fliplr(filter), filter ]';        %Skapar speglat filter med gamla filtret

[rawData, Fs]= audioread('Ljudfiler/1.1World_of_Goo.wav');      %laddar in ljud

frec = stft(rawData,Fs,'Window',hann(FFTLength,'periodic'),'OverlapLength',FFTLength/2,'FFTLength',FFTLength);  %Skapar fönster i tidsdomän och gör fourieranalys i fönstret och sen flyttar fönstret framåt och upprepar

frec2=frec.*filter;     %applicera filter    

complexOutput = istft(frec2, Fs,'Window',hann(FFTLength,'periodic'),'OverlapLength',FFTLength/2,'FFTLength',FFTLength); %lika som tidigare fast tillbaka till tidsdomän

output=real(complexOutput)+imag(complexOutput);     %Lägger ihop realdel med komplexdel

sound(output, Fs);      %Spelar upp behandlat ljud


          
          



