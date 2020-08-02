clc;
clear all;
close all;
sys=zpk([],[0 -1 -2],[1]);
step(sys);
kp=dcgain(sys);
ess=1/(1+kp);