clc;
clear all;
close all;
num=[1 30];
p1=[0 1 1];
p2=[1 20 116];
den=conv(p1,p2);
den2=conv(den,[1 2]);
figure;
disp('Time response c');
t=stepinfo(tf(num,den2))
rlocus(num,den2),title('Root locus c');