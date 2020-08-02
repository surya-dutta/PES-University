clc;
clear all;
close all;
syms s;
num=sym2poly(s-1);
deno=sym2poly((s+1)*(s+2));
sys=tf(num,deno);
figure;
rlocus(sys)
figure;
nyquist(sys)
%thus system is stable
