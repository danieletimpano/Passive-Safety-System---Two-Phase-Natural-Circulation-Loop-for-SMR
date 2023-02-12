close all 
clear 
clc

load('fig5_49.mat');
load('fig5_61.mat');
load('fig5_79.mat');

j=1;

for i= 1:9
if fig5_61(i).Q==23000
a(j) = fig5_61(i).FR_computed;
b(j) = fig5_61(i).m;
j=j+1;
end
end

i=1;
j=1;

for i= 1:9
if fig5_61(i).Q==33000
c(j) = fig5_61(i).FR_computed;
d(j) = fig5_61(i).m;
j=j+1;
end
end


i=1;
j=1;

for i= 1:9
if fig5_61(i).Q==43000
e(j) = fig5_61(i).FR_computed;
f(j) = fig5_61(i).m;
j=j+1;
end
end


i=1;
j=1;

for i= 1:2
if fig5_49(i).Q==23000
g(j) = fig5_49(i).FR_computed;
h(j) = fig5_49(i).m;
j=j+1;
end
end


i=1;
j=1;

for i= 1:2
if fig5_49(i).Q==33000
z(j) = fig5_49(i).FR_computed;
v(j) = fig5_49(i).m;
j=j+1;
end
end


i=1;
j=1;


for i= 1:3
if fig5_79(i).Q==33000
q(j) = fig5_79(i).FR_computed;
r(j) = fig5_79(i).m;
j=j+1;
end
end


hold on
plot(a,b,'X','Linewidth', 2, 'MarkerSize', 10)
plot(c,d,'X','Linewidth', 2,'MarkerSize', 10)
plot(e,f,'X','Linewidth', 2,'MarkerSize', 10)
plot(g,h,'X','Linewidth', 2,'MarkerSize', 10)
plot(z,v,'X','Linewidth', 2,'MarkerSize', 10)
plot(q,r,'X','Linewidth', 2,'MarkerSize', 10)
grid on
grid minor
hold off

legend({'23kW - 0.61','33kW - 0.61','43kW - 0.61','23kW - 0.49','33kW - 0.49','33kW - 0.79'},'Location','southeast')
xlabel('Filling ratio')
ylabel('Flowrate [kg/s]')
title('Effects of filling ratio and electrical power on system flowrate')

hold off