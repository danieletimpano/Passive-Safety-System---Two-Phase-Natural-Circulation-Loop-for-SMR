close all
clear
clc

load('output_model.mat');
figure(1);
pointsize=20;
j=1;
k=1;
for i= 1:236
    if output(i).converged==1 & output(i).FR_computed<0.96
       x(j) = output(i).p_1;
       y(j) = output(i).FR_computed;
       z(j) = output(i).dT_subcooling;
       j=j+1;      
    end
end

scatter(x,y,pointsize,z,'filled','sizeData', 50);
c=colorbar;
c.Label.String='ΔT of subcooling (°C)';
c.Label.FontSize=18;
ylim([0 1.1])
xlim([2 170]);
grid on
grid minor
xlabel('System Pressure (bar)','FontSize',18);
ylabel('Filling ratio','FontSize',18);
title('Filling ratio boundaries as a function of pressure and downcomer subcooling', 'FontSize',20);
set(gca,'FontSize',15);

