close all 
clear 
clc

load('FR_0.49_selected.mat');
load('FR_0.61_selected.mat');
load('FR_0.79_selected.mat');

j=1;
k=1;
p=1;

for i= 1:11
    if selected(i).Q==23000
aa(j) = selected(i).FR_computed;
bb(j) = selected(i).dT_subcooling;
j=j+1;
    elseif selected(i).Q==33000
cc(k) = selected(i).FR_computed;
dd(k) = selected(i).dT_subcooling;
k=k+1;
    elseif selected(i).Q==43000
ee(p) = selected(i).FR_computed;
ff(p) = selected(i).dT_subcooling;
p=p+1
end
end

j=1;
k=1;
p=1;

for i= 1:17
    if selected_medium(i).Q==23000
gg(j) = selected_medium(i).FR_computed;
hh(j) = selected_medium(i).dT_subcooling;
j=j+1
    elseif selected_medium(i).Q==33000
ll(k) = selected_medium(i).FR_computed;
mm(k) = selected_medium(i).dT_subcooling;
k=k+1
elseif selected_medium(i).Q==43000
nn(p) = selected_medium(i).FR_computed;
oo(p) = selected_medium(i).dT_subcooling;
p=p+1
end
end

j=1;
k=1;
p=1;

for i= 1:8
    if selected_high(i).Q==23000
qq(k) = selected_high(i).FR_computed;
rr(k) = selected_high(i).dT_subcooling;
k=k+1
    elseif selected_high(i).Q==33000
ss(p) = selected_high(i).FR_computed;
tt(p) = selected_high(i).dT_subcooling;
p=p+1
end
end


hold on
plot(aa,bb,'X','Linewidth', 2,'MarkerSize', 10)
plot(cc,dd,'X','Linewidth', 2,'MarkerSize', 10)
plot(ee,ff,'X','Linewidth', 2,'MarkerSize', 10)
plot(gg,hh,'X','Linewidth', 2,'MarkerSize', 10)
plot(ll,mm,'X','Linewidth', 2,'MarkerSize', 10)
plot(nn,oo,'X','Linewidth', 2,'MarkerSize', 10)
plot(qq,rr,'X','Linewidth', 2,'MarkerSize', 10)
plot(ss,tt,'X','Linewidth', 2,'MarkerSize', 10)
grid on
grid minor
hold off

legend({'23kW - 0.49','33kW - 0.49','43kW - 0.49','23kW - 0.61','33kW - 0.61','43kW - 0.61','23kW - 0.79','33kW - 0.79'},'Location','southeast')
xlabel('Filling ratio')
ylabel('Condenser outlet subcooling (°C)')
title('Effects of filling ratio and electrical power on pool condenser outlet subcooling')

hold off