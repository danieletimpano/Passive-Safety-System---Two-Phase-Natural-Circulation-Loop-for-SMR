close all
clear
clc

load('output_model.mat');
figure(1);
pointsize=20;
j=1;
for i= 1:236
    if output(i).converged==1 & output(i).FR_computed<0.96
       x(j) = output(i).p_1;
       y(j) = output(i).FR_computed;
       z(j) = output(i).Q;
       j=j+1;
    end
end

scatter(x,y,pointsize,z,'filled');
c=colorbar;
c.Label.String='Power(W)';
ylim([0 1.2])
xlim([0 250]);
grid on
grid minor

xlabel('System Pressure (bar)');
ylabel('Filling ratio');
title('Filling ratio boundaries as a function of pressure and SG power');

