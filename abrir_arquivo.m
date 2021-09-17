% CAD Simplificado
% Script para abertura de arquivos - abrir_arquivo

clf;                                 % Limpa a figura plotada anteriormente

NomeArquivo = uigetfile('.mat');     % Mostra os arquivos salvos possíveis de serem abertos

load(NomeArquivo);                   % Carrega o dicionário salvo no arquivo escolhido

% Exclusao de '.mat' do nome do arquivo
Tamanho = length(NomeArquivo);         % Comprimento do nome do arquivo

NomeArquivo((Tamanho-3):Tamanho) = []; % Elimina '.mat' do nome do arquivo

LineType = '-';                        % Abre o arquivo com o tracejado padrão
LineColor = 'k';                       % Abre o arquivo com a cor padrão

ArchiveOpened = 'Yes';                 % Indicador de que há arquivo aberto

% Plotar todas as entidades do arquivo

figure(1)
clf;
title(NomeArquivo);
hold on;

for N = 1:(NEntidades - 1)
    
    plotar_entidade;
    
end