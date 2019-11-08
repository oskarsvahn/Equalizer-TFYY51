[A,B,C,D] = butter(0,[125 125]/250); %påverkar ett filter mellan 0-250 hz och släpper igenom 125Hz. 
d = designfilt('bandpassiir','FilterOrder',20,'HalfPowerFrequency1',125,'HalfPowerFrequency2',125,'SampleRate',1500);
sos = ss2sos(A,B,C,D);
fvt = fvtool(sos,d,'Fs',1500);
legend(fvt,'butter','designfilt')