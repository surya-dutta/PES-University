clc;
clear all;
close all;
syms s;
num=sym2poly(40+0.5*s^2+9*s);
deno=sym2poly(s*(s^2+30*s+200));
sys=tf(num,deno);
bode(sys)
[gm pm wcp wcf]=margin(sys)
