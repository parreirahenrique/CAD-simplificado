% CAD Simplificado
% Script para escolher a entidade a ser modificada - escolher_entidade

EscolherEntidade = menu('Qual entidade deseja modificar?', Dicionario.Entidade(1:(NEntidades - 1)).Descritor); % Apresenta um menu com as entidades possíveis

plotar_entidade_modificar; % Chama script para plotar a entidade a ser modificada de modo diferente