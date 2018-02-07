clc
B=3400;
vcc=5;
Rl=20000;
T= -30:0.1:30;

Rt1=10000*exp(B./(T+273)-B./298);
Rt2=4700*exp(B./(T+273)-B./298);

vo1=(vcc*Rt1)./(Rt1+Rl);
vo2=(vcc*Rt2)./(Rt2+Rl);

I1=(vcc./(Rt1+Rl));
I2=(vcc./(Rt2+Rl));

subplot(2,1,1)
plot(T,vo1,'r-',T,vo2,'g-'),grid on
title('Voltaje de salida');
xlabel('ºC');
ylabel('voltaje');
subplot(2,1,2)
plot(T,Rt1,'r-',T,Rt2,'g-'),grid on
title('Resistencia de termistor');
xlabel('ºC');
ylabel('Resistencia');