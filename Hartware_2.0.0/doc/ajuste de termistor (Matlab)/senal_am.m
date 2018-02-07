clc
t=0:0.001:0.5;
m=sin(5*t);

s=cos(500000*t+m);

plot(t,s)