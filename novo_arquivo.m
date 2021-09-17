% CAD Simplificado
% Script para criar novo arquivo - novo_arquivo

clf;                               % Limpa a figura plotada anteriormente

Dicionario.Entidade(1) = Entidade; % Cria um novo desenho para receber as entidades

NEntidades = 1;                    % Contador do número de entidades do arquivo atual

ArchiveOpened = 'Yes';             % Indicador de que há arquivo aberto

NS = 0;                            % Contador de segmentos de reta criados
NR = 0;                            % Contador de retângulos criados
NC = 0;                            % Contador de círculos criados
NA = 0;                            % Contador de arcos criados


LineType = '-';                    % Estilo da linha padrão para plotagem
LineColor = 'k';                   % Cor da linha padrão para plotagem

Xmin = inf;                        % Variável para dimensionar os eixos de plotagem (valor mínimo da abscissa)
Xmax = -inf;                       % Variável para dimensionar os eixos de plotagem (valor máximo da abscissa)
Ymin = inf;                        % Variável para dimensionar os eixos de plotagem (valor máximo da abscissa)
Ymax = -inf;                       % Variável para dimensionar os eixos de plotagem (valor máximo da abscissa)

NomeArquivo = 'Novo dicionário';      % Nome do arquivo aberto atualmente

% Abre figura com título genérico
figure(1);
title(NomeArquivo);
box on;
hold on;