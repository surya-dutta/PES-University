clc;
clear all;
close all;
num=25;
deno=[1 1];
sys=tf(num,deno);
step(sys);
title("Step response of the system");
