y= audioread('fil');
fs=1000;
Fs=14000;
FS=44100;
fc=20; fc0=180; fc1=200; fc2=480; fc3=500; fc4=980; fc5=1000; fc6=3980; fc7=4000; 
fc8=6980; fc9=7000; fc10=9980; fc11=10000; fc12=14800; fc13=15000; fc14=22000;

[a,b] = butter(10,[(fc/fs), (fc0/fs)]);
freqz(a,b)
dataIn = (y);
do = filter(b,a,dataIn);

[c,d] = butter(10,[(fc1/fs), (fc2/fs)]);
freqz(c,d)
do0 = filter(c,d,dataIn);

[e,f] = butter(10,[(fc3/fs), (fc4/Fs)]);
freqz(e,f)
do1 = filter(e,f,dataIn);

[g,h] = butter(10,[(fc5/Fs), (fc6/Fs)]);
freqz(g,h)
do2 = filter(g,h,dataIn);

[i,j] = butter(10,[(fc7/Fs), (fc8/Fs)]);
freqz(i,j)
do3 = filter(i,j,dataIn);

[k,l] = butter(10,[(fc9/FS), (fc10/FS)]);
freqz(k,l)
do4 = filter(k,l,dataIn);

[m,n] = butter(10,[(fc11/FS), (fc12/FS)]);
freqz(m,n)
do5 = filter(m,n,dataIn);

[o,p] = butter(10,[(fc13/FS), (fc14/FS)]);
freqz(o,p)
do6 = filter(o,p,dataIn);