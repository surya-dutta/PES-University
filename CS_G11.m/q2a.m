clc;
clear all;
close all;
syms s;
num=1.5;
deno=sym2poly(s^2+0.5*s+1.5);
sys=tf(num,deno);
step(sys);
