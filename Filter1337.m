[y, fs]= audioread('1.1World_of_Goo.wav');
fc=20; fc0=180; fc1=200; fc2=480; fc3=500; fc4=980; fc5=1000; fc6=3980; fc7=4000; 
fc8=6980; fc9=7000; fc10=9980; fc11=10000; fc12=14800; fc13=15000; fc14=22000;
dataIn = (y);

[a,b] = butter(10,[fc/(fs/2),fc0/(fs/2)]);
freqz(a,b)
hold on

[c,d] = butter(3,[fc1/(fs/2), fc2/(fs/2)]);
freqz(c,d)

[e,f] = butter(4,[fc3/(fs/2), fc4/(fs/2)]);
freqz(e,f)

[g,h] = butter(4,[fc5/(fs/2), fc6/(fs/2)]);
freqz(g,h)

[i,j] = butter(5,[fc7/(fs/2), fc8/(fs/2)]);
freqz(i,j)

[k,l] = butter(6,[fc9/(fs/2), fc10/(fs/2)]);
freqz(k,l)

[m,n] = butter(6,[fc11/(fs/2), fc12/(fs/2)]);
freqz(m,n)

[o,p] = butter(7,[fc13/(fs/2), fc14/(fs/2)]);
freqz(o,p)

do = filter(a,b,dataIn);
do0 = filter(c,d,dataIn);
do1 = filter(e,f,dataIn);
do2 = filter(g,h,dataIn);
do3 = filter(i,j,dataIn);
do4 = filter(k,l,dataIn);
do5 = filter(m,n,dataIn);
do6 = filter(o,p,dataIn);

R=do+do1+do2+do3+do4+do5+do6;