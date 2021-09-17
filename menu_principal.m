% CAD Simplificado
% Script principal - menu_principal

clear all; % Limpando todas variáveis
clc;       % Limpando command window
clf;       % Limpando todas as figuras
close all; % Fechando janelas abertas

% ---------------------------------------INICIAR VARIAVEIS IMPORTANTES---------------------------------------

Entidade = struct('Descritor', [],...
                  'TipoLinha', [],...
                   'CorLinha', [],...
                     'Valor1', [],...
                     'Valor2', [],...
                     'Valor3', [],...
                     'Valor4', [],...
                     'Valor5', []);   % Cria um struct com os campos vazios ao lado

Close = 'No';                         % Variável para determinar se o programa deve continuar sendo executado

ArchiveOpened = 'No';                 % Indicador de que não há arquivo aberto

% -----------------------------------------------------------------------------------------------------------

% ------------------------------------------LOOP DO MENU PRINCIPAL-------------------------------------------

while strcmp(Close, 'No') == 1
    
    MenuPrincipal = menu('Menu principal', 'Abrir arquivo', 'Novo arquivo',...
    'Salvar Arquivo', 'Desenhar', 'Modificar', 'Sair');
    
    switch MenuPrincipal
        case 1 % Abrir arquivo
            
            abrir_arquivo   % Chamar script para abrir arquivos salvos
            
        case 2 % Novo arquivo
            
            novo_arquivo;   % Chamar script para criação de novo arquivo
            
        case 3 % Salvar arquivo
            
            if strcmp(ArchiveOpened, 'Yes') == 1
                
                salvar_arquivo; % Chamar script para salvar o arquivo atual
                
            elseif strcmp(ArchiveOpened, 'No') == 1
                
                fprintf('Crie um novo arquivo ou abra um arquivo antes. \n\n')
                
            end
            
        case 4 % Desenhar
            
            if strcmp(ArchiveOpened, 'Yes') == 1
                
                desenhar;       % Chamar script com as opções de desenho
                
            elseif strcmp(ArchiveOpened, 'No') == 1
                
                fprintf('Crie um novo arquivo ou abra um arquivo salvo. \n\n');
                
            end
            
        case 5 % Modificar
            
            if strcmp(ArchiveOpened, 'Yes') == 1
                
                modificar; % Chamar script para modificar uma entidade
                
            elseif strcmp(ArchiveOpened, 'No') == 1
                
                fprintf('Crie um novo arquivo ou abra um arquivo antes. \n\n')
                
            end
            
        case 6 % Sair
            
            Close = 'Yes';
            
    end

end

%------------------------------------------------------------------------------------------------------------