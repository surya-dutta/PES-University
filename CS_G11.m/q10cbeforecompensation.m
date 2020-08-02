%before compensation
clc;
clear all;
close all;
syms s;
num=400;
deno=sym2poly(s^2+30*s+200);
sys=tf(num,deno);
bode(sys)
[gm pm wcp wcf]=margin(sys)


