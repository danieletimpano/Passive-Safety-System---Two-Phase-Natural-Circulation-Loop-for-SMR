close all 
clear 
clc

load('FR_0.79_selected.mat');
load('FR_0.61_selected.mat');
load('FR_0.49_selected.mat');
load('Q.mat')

j=1;
for i= 1:126
FR_theory_049(j)=Q(1,i); 
FR_theory_061(j)=Q(2,i);
FR_theory_079(j)=Q(3,i);
j=j+1;
end
p= 5:130;

for i= 1:11
a(i) = selected(i).Wcond;
b(i) = selected(i).p;
end

for i= 1:17
c(i) = selected_medium(i).Wcond;
d(i) = selected_medium(i).p;
end

for i= 1:8
e(i) = selected_high(i).Wcond;
f(i) = selected_high(i).p;
end

figure(1)

hold on
plot(a,b,'o','Linewidth', 1.3)
plot(c,d,'o','Linewidth', 1.3)
plot(e,f,'o','Linewidth', 1.3)
plot(FR_theory_049,p,'b--', 'Linewidth', 1.3)
plot(FR_theory_061,p,'r--', 'Linewidth', 1.3)
plot(FR_theory_079,p,'y--', 'Linewidth', 1.3)
grid on
grid minor
hold off

xlabel('Pool rejected power (W)')
ylabel('Pressure (bar)')
legend({'FR 0.49','FR 0.61', 'FR 0.79', 'Theory', 'Theory', 'Theory'},'Location','southeast')
title('Effects of filling ratio on pool rejected power')
