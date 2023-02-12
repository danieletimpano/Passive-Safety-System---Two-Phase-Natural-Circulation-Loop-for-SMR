close all
clear 
clc 

j=1;
indice=0;
load('output_model.mat');

for i=1:112
    if (output(i).FR_computed <= 0.66 & output(i).FR_computed >= 0.56)
    display('sono vicini!')
        fig5(j).FR_computed=output(i).FR_computed;
        fig5(j).FR_theory=output(i).FR_theory;
        fig5(j).Q=output(i).Q;
        fig5(j).Wcond= output(i).condenser_data.W_tot;
        fig5(j).m=output(i).m_dot;
        j=j+1;
    else
        indice= indice +1;
    end
    
end