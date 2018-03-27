
function wir()
clear all 
close all
disp('To stop press 0 ')
disp('To continue press 1')
n=input(' ')

if n==1
    v = msgbox('Lets Start');
    pause(1);
    delete(v);
    v1 = msgbox('Say one');
    pause(1);
    delete(v1)
    g2();
else
    stop()
end
