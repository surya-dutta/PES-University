clc;
clear all;
close all;
syms s;
num=sym2poly(s+3);
deno=sym2poly(3*(s^2+0.5*s+1.5));
sys=tf(num,deno);
step(sys);

