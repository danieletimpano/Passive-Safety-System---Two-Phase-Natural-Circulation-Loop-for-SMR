close all
clear 
clc 

j=1;
indice=0;
load('output_model.mat');

for i=1:112
    if ((output(i).FR_theory <= (output(i).FR_computed + 0.05)) & (output(i).FR_theory >= (output(i).FR_computed - 0.05)))
    display('sono vicini!')
        matching(j).FR_computed=output(i).FR_computed;
        matching(j).FR_theory=output(i).FR_theory;
        matching(j).Q=output(i).Q;
        matching(j).Wcond= output(i).condenser_data.W_tot;
        matching(j).p=output(i).p_1;
        matching(j).m_dot=output(i).m_dot;
        matching(j).dT_subcooling=output(i).dT_subcooling;
        j=j+1;
    else
        indice= indice +1;
    end
    
end