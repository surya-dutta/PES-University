clc;
clear all;
close all;
s = tf('s');
t_f=zpk([],[0 -1 -2],[1]);
step(t_f/s);
title('ramp response');
kv=dcgain(s*t_f);
ess=1/(kv);
