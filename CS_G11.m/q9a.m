clc;
clear all;
close all;
syms s;
T=1;
num1=1;
deno1=sym2poly(s+1);
G=tf(num1,deno1)
num2=10;
deno2=sym2poly(s);
H=tf(num2,deno2);
sys=feedback(G*T,H)
nyquist(sys)
