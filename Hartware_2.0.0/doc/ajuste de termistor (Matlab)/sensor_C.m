d=0:5:25
meu=[6.9 6.70 6.20 5.85 5.37 4.90]
L=-0.08*d+6.90


plot(d,mu,d,L)
title('curva de linealidad');
xlabel('Distancia (mm)');
ylabel('Salida (V)');
legend('medidas up','Recta');

