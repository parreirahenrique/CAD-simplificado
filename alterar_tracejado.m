% CAD Simplificado
% Script para alterar o tracejado da entidade escolhida - alterar_tracejado

Estilo = menu('Definir tracejado da entidade', 'Pontos',...
                                             'Contínua',...
                                               'Traços',...
                                      'Traços e pontos');

switch Estilo
    
    case 1
        
        LineType = ':';
        
    case 2
        
        LineType = '-';
        
    case 3
        
        LineType = '--';
        
    case 4
        
        LineType = '-.';
        
end

% Atualizando cor da entidade escolhida

Dicionario.Entidade(EscolherEntidade).TipoLinha = LineType;

% Plotando novamente todas as entidades

figure(1)
clf;
title(NomeArquivo);
hold on;

for N = 1:(NEntidades - 1)
    
    plotar_entidade;
    
end