% CAD Simplificado
% Script para plotar entidade a ser modificada de modo diferente - plotar_entidade_modificar

figure(1)
clf;
title(NomeArquivo);
hold on;

for N = 1:(EscolherEntidade - 1)
    
    plotar_entidade; % Plota as entidades até se chegar a escolhida igualmente
    
end

entidade_modificar; % Plota a entidade modificada com a cor verde e espessura maior

for N = (EscolherEntidade + 1):(NEntidades - 1)
    
    plotar_entidade; % Plota o restante das entidades
    
end