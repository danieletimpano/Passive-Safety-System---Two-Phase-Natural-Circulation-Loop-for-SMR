close all
clear
clc

load('output_model.mat');
figure(1);
j=1;
k=1;
for i= 1:236
    if output(i).FR_computed<0.96 & output(i).converged==1 
          x_in(j) = output(i).p_1;
          y_in(j) = output(i).FR_computed;
          j=j+1;
        elseif output(i).FR_theory<0.96 & output(i).converged==0 
          x_out(k) = output(i).p_1;
          y_out(k) = output(i).FR_theory;
          k=k+1;       
    end
end
scatter(x_in, y_in,'MarkerFaceColor',[0.4660 0.6740 0.1880], 'sizeData', 29 );
hold on
scatter(x_out, y_out,'MarkerFaceColor',[0.6350 0.0780 0.1840], 'sizeData', 29 );
ylim([0 1.1]);
xlim([2 170]);
grid on 
box on
legend('working', 'not working','FontSize',13,'Location','south east');
xlabel('System Pressure (bar)','FontSize',17);
ylabel('Filling ratio','FontSize',17);
set(gca,'GridLineStyle',':'); %grid
set(gca,'linewidth',1.55,'FontSize',17, 'XTick',[0 50 100 150]); %axes
