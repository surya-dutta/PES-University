clc;
clear all;
close all;
syms s;
T=sym2poly(s+0.05);
num1=1;
den1=sym2poly(s+1);
G=tf(num1,den1)
num2=10;
den2=sym2poly(s);
H=tf(num2,den2);

sys=feedback(G*T,H);
nyquist(sys);
