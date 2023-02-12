close all
clear 
clc 

j=1;
indice=0;
load('output_model.mat');

for i=1:112
    if (output(i).FR_computed <= 0.66 & output(i).FR_computed >= 0.56)
        selected(j).FR_computed=output(i).FR_computed;
        selected(j).FR_theory=output(i).FR_theory;
        selected(j).Q=output(i).Q;
        selected(j).Wcond= output(i).condenser_data.W_tot;
        selected(j).p=output(i).p_1;
        selected(j).m_dot=output(i).m_dot;
        selected(j).dT_subcooling=output(i).dT_subcooling;
        j=j+1;
    else
        indice= indice +1;
        end
    end