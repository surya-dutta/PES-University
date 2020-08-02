clc;
clear all;
close all;
G_num=[0 0 4];
G_den=[1 2 0];
K_num=[0 1 1];
K_den=[0 1 0];
Gs=tf(G_num,G_den);
Ks=tf(K_num,K_den);
f2=((Gs)/(1+Gs*Ks));
sys=feedback(Gs,Ks)
t = 0:0.1:25;
%ramp 
u=t;
figure;
[y,t,x] = lsim(sys,u,t);
plot(t,y,'y',t,u,'m');
xlabel('Time (sec)');
ylabel('Amplitude');
title('ramp response f2');
%unit step
u=(t>=0);
figure;
[y,t,x] = lsim(sys,u,t);
plot(t,y,'y',t,u,'m');
xlabel('Time (sec)');
ylabel('Amplitude');
title('unit step response f2'); 
