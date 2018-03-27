function g2()
dev = audiodevinfo;
rec = audiorecorder(50000, 16, 1);
 
 recordblocking(rec, 3);
 v2 = msgbox('Stop and wait');
 pause(2);
 delete(v2);
x=getaudiodata(rec);
x=x';
x=x(1,:);
x=x';
y1=wavread('one.wav');
y1=y1';
y1=y1(1,:);
y1=y1';
z1=xcorr(x,y1);
m1=max(z1);
l1=length(z1);
t1=-((l1-1)/2):1:((l1-1)/2);
t1=t1';
subplot(3,2,1);
plot(t1,z1);

y2=wavread('two.wav');
y2=y2';
y2=y2(1,:);
y2=y2';
z2=xcorr(x,y2);
m2=max(z2);
l2=length(z2);
t2=-((l2-1)/2):1:((l2-1)/2);
t2=t2';
subplot(3,2,2);
plot(t2,z2);

y3=wavread('three.wav');
y3=y3';
y3=y3(1,:);
y3=y3';
z3=xcorr(x,y3);
m3=max(z3);
l3=length(z3);
t3=-((l3-1)/2):1:((l3-1)/2);
t3=t3';
subplot(3,2,3);
plot(t3,z3);

y4=wavread('four.wav');
y4=y4';
y4=y4(1,:);
y4=y4';
z4=xcorr(x,y4);
m4=max(z4);
l4=length(z4);
t4=-((l4-1)/2):1:((l4-1)/2);
t4=t4';
subplot(3,2,4);
plot(t4,z4);

y5=wavread('five.wav');
y5=y5';
y5=y5(1,:);
y5=y5';
z5=xcorr(x,y5);
m5=max(z5);
l5=length(z5);
t5=-((l5-1)/2):1:((l5-1)/2);
t5=t5';
subplot(3,2,5);
plot(t5,z5);

a=[m1 m2 m3 m4 m5];
m=max(a);
figure
plot(x);
h=wavread('allow.wav');
if m<=m1
    soundsc(wavread('true.wav'),50000)
    soundsc(h,50000)
    v = msgbox('You said one');
    v=msgbox('Now say the next number');
    g2();
else
    soundsc(wavread('wrong.wav'),50000)
    soundsc(h,50000)
    v=msgbox('Wrong Answer,try again')
    wir()
end    
if m<=m2
    soundsc(wavread('true.wav'),50000)
    soundsc(h,50000)
    v = msgbox('You said two');
    v=msgbox('Now say the next number');
    g2();
else
    soundsc(wavread('wrong.wav'),50000)
    soundsc(h,50000)
    v=msgbox('Wrong Answer,try again')
    wir()
end    

    
if m<=m3
    soundsc(wavread('true.wav'),50000)
    soundsc(h,50000)
    v = msgbox('You said three');
    v=msgbox('Now say the next number');
    g2();
soundsc(wavread('wrong.wav'),50000)
    soundsc(h,50000)
    v=msgbox('Wrong Answer,try again')
    wir()
end    
    
if m<=m4
    soundsc(wavread('true.wav'),50000)
    soundsc(h,50000)
    v = msgbox('You said four');
    v=msgbox('Congrats');
soundsc(wavread('wrong.wav'),50000)
    soundsc(h,50000)
    v=msgbox('Wrong Answer,try again')
    wir()
end    

if m<=m1 & m<=m2 & m<=m3 & m<=m4   
   v = msgbox('Speech not recognised');
end

end