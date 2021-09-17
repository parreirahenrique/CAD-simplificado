% CAD Simplificado
% Script para alterar a cor da entidade escolhida  - alterar_cor

Cor = menu('Para qual cor deseja alterar?', 'Amarelo',...
                                            'Magenta',...
                                              'Ciano',...
                                           'Vermelho',...
                                              'Verde',...
                                               'Azul',...
                                             'Branco',...
                                              'Preto');

switch Cor
    
    case 1
        
        LineColor = 'y';
        
    case 2
        
        LineColor = 'm';
        
    case 3 
        
        LineColor = 'c';
        
    case 4
        
        LineColor = 'r';
        
    case 5
        
        LineColor = 'g';
        
    case 6
        
        LineColor = 'b';
        
    case 7
        
        LineColor = 'w';
        
    case 8
        
        LineColor = 'k';
        
end

% Atualizando cor da entidade escolhida

Dicionario.Entidade(EscolherEntidade).CorLinha = LineColor;

% Plotando novamente todas as entidades

figure(1)
clf;
title(NomeArquivo);
hold on;

for N = 1:(NEntidades - 1)
    
    plotar_entidade;
    
end