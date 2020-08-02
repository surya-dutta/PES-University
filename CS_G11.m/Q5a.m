clc;
clear all;
close all;
num=[1 30];
p1=[0 1 1];
p2=[1 20 116];
den=conv(p1,p2);
figure;
disp('Time response a');
t=stepinfo(tf(num,den))
rlocus(num,den),title('Root locus a');