clc;
clear all;
close all;
syms s;
num=sym2poly(27.8*(s+0.9));
deno=sym2poly((s^2+7*s+25)*(s+1));
sys=tf(num,deno);
step(sys);
