clc;
clear all;
close all;
num=[1 30];
p1=[0 1 1];
p2=[1 20 116];
den=conv(p1,p2);
num3=conv(num,[1 -2]);
figure;
disp('Time response d');
t=stepinfo(tf(num3,den))
rlocus(num3,den),title('Root locus d');