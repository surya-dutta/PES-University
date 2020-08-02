clc;
clear all;
close all;
num=[1 30];
p1=[0 1 1];
p2=[1 20 116];
den=conv(p1,p2);
num2=conv(num,[1 2]);
figure;
disp('Time response b');
t=stepinfo(tf(num2,den))
rlocus(num2,den),title('Root locus b');