% CAD Simplificado
% Script para salvar arquivo atual - salvar_arquivo

SaveArchive = menu('Deseja salvar o arquivo atual?', 'Sim', 'N�o');

switch SaveArchive
    
    case 1
        
        NomeArquivo = input('Insira o nome do arquivo para salv�-lo: \n', 's'); % Pergunta ao usu�rio o nome do arquivo
        
        % Mudando t�tulo da figura para o nome do arquivo salvo
        figure(1);
        title(NomeArquivo);
        set(gca, 'DataAspectRatio', [1 1 1]); % Eixos com mesma propor��o
        set(gcf,'color','w');                 % Fundo da figura branco
        
        % Salvando vari�veis de interesse em uma vari�vel com o nome especificado pelo usu�rio
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