% CAD Simplificado
% Script para criar novo arquivo - novo_arquivo

clf;                               % Limpa a figura plotada anteriormente

Dicionario.Entidade(1) = Entidade; % Cria um novo desenho para receber as entidades

NEntidades = 1;                    % Contador do n�mero de entidades do arquivo atual

ArchiveOpened = 'Yes';             % Indicador de que h� arquivo aberto

NS = 0;                            % Contador de segmentos de reta criados
NR = 0;                            % Contador de ret�ngulos criados
NC = 0;                            % Contador de c�rculos criados
NA = 0;                            % Contador de arcos criados


LineType = '-';                    % Estilo da linha padr�o para plotagem
LineColor = 'k';                   % Cor da linha padr�o para plotagem

Xmin = inf;                        % Vari�vel para dimensionar os eixos de plotagem (valor m�nimo da abscissa)
Xmax = -inf;                       % Vari�vel para dimensionar os eixos de plotagem (valor m�ximo da abscissa)
Ymin = inf;                        % Vari�vel para dimensionar os eixos de plotagem (valor m�ximo da abscissa)
Ymax = -inf;                       % Vari�vel para dimensionar os eixos de plotagem (valor m�ximo da abscissa)

NomeArquivo = 'Novo dicion�rio';      % Nome do arquivo aberto atualmente

% Abre figura com t�tulo gen�rico
figure(1);
title(NomeArquivo);
box on;
hold on;