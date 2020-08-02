clc;
clear all;
close all;
syms s;
num=25;
deno=sym2poly((s^2+7*s+25)*(s+1));
sys=tf(num,deno);
step(sys);
