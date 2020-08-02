clc;
clear all;
close all;
syms s;
%Since we dont have a inbuilt ramp response generator, we use step response
%by multiplying one 's' term in the denominator.
num=sym2poly(10+10*s);
deno=sym2poly(s*(s^2+20*s+10));
sys=tf(num,deno)
figure;
step(sys)
