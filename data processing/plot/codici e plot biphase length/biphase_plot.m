close all 
clear 
clc

load('output_model.mat');
j=1;

for i = 1:236
    if output(i).converged & output(i).FR_computed < 0.85 & isfield(output(i).condenser_data, 'L_bi')

      
        if output(i).Q == 23000
        fr23(j)=output(i).FR_computed;
        l23(j)=output(i).condenser_data.L_bi;
        
        elseif output(i).Q == 33000
        fr33(j)=output(i).FR_computed;
        l33(j)=output(i).condenser_data.L_bi;

        elseif output(i).Q == 43000
        fr43(j)=output(i).FR_computed;
        l43(j)=output(i).condenser_data.L_bi;
        end
j=j+1;
    end
end

hold on
plot(fr23,l23,'o','Linewidth',1.5)
plot(fr33,l33,'o','Linewidth',1.5)
plot(fr43,l43,'o','Linewidth',1.5)
hold off

grid on
grid minor

xlabel('Filling Ratio')
ylabel('Lenght of biphase [m]')
legend({'Power 23 kW', 'Power 33 kW', 'Power 43 kW'},'Location','southeast')

title('Effects of filling ratio on length of biphase fluid in the condenser')