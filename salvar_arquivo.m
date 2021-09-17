% CAD Simplificado
% Script para salvar arquivo atual - salvar_arquivo

SaveArchive = menu('Deseja salvar o arquivo atual?', 'Sim', 'Não');

switch SaveArchive
    
    case 1
        
        NomeArquivo = input('Insira o nome do arquivo para salvá-lo: \n', 's'); % Pergunta ao usuário o nome do arquivo
        
        % Mudando título da figura para o nome do arquivo salvo
        figure(1);
        title(NomeArquivo);
        set(gca, 'DataAspectRatio', [1 1 1]); % Eixos com mesma proporção
        set(gcf,'color','w');                 % Fundo da figura branco
        
        % Salvando variáveis de interesse em uma variável com o nome especificado pelo usuário
        save(NomeArquivo, 'Dicionario',...
                          'NEntidades',...
                                  'NS',...
                                  'NR',...
                                  'NC',...
                                  'NA',...
                                  'Xmin',...
                                  'Xmax',...
                                  'Ymin',...
                                  'Ymax');
        
end