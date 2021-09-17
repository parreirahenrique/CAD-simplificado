% CAD Simplificado
% Script para definição do estilo da linha - definir_estilo

% Definindo tracejado da linha

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

Cor = menu('Definir cor da entidade', 'Amarelo',...
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