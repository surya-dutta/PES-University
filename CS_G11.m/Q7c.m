clc;
clear all;
close all;
G_num=[0 0 4];
G_den=[1 2 0];
K2_num=[1 0.5];
K2_den=[1 0];
Gs=tf(G_num,G_den);
K2s=tf(K2_num,K2_den);
f3=((Gs*K2s)/(1+(Gs*K2s)));
sys=feedback(Gs*K2s,1)
t = 0:0.1:25;
%ramp 
u=t;
figure;
[y,t,x] = lsim(sys,u,t);
plot(t,y,'y',t,u,'m');
xlabel('Time (sec)');
ylabel('Amplitude');
title('ramp response f3');
%unit step
u=(t>=0);
figure;
[y,t,x] = lsim(sys,u,t);
plot(t,y,'y',t,u,'m');
xlabel('Time (sec)');
ylabel('Amplitude');
title('unit step response f3'); 

