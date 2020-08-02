clc;
clear all;
close all;
num=[2 0.5];
p1=[1 1 0 0];
p2=[0 0 1 0.5];
den=conv(p1,p2);
[magn, phase]=bode(num,den);
%disp(magn);
%disp(phase);
if(isstable(tf(num,den)))
    disp('Is stable');
else
    disp('Not Stable');
end
bode(num,den),title('Bode plot');
[Gm,Pm,Wcp,Wcg] = margin(tf(num,den))
grid();
