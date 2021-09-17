% CAD Simplificado 
% Script para modificar entidades criadas - modificar

CloseModifying = 'No'; % % Variável para determinar se o usuário deseja continuar no menu de modificações

while strcmp(CloseModifying, 'No') == 1
    
   MenuModificar = menu('Menu modificar', 'Aumentar proporções',...
                                           'Reduzir proporções',...
                                                  'Alterar cor',...
                                            'Alterar tracejado',...
                                                       'Voltar');
   
   switch MenuModificar
       
       case 1 % Aumentar proporções
           
           escolher_entidade;   % Chamar script para escolher entidade a ser modificada
           aumentar_proporcao; % Chamar script para aumentar proporções da entidade escolhida
           
       case 2 % Reduzir proporções
           
           escolher_entidade;   % Chamar script para escolher entidade a ser modificada
           reduzir_proporcao;  % Chamar script para reduzir proporções da entidade escolhida
           
       case 3 % Alterar cor
           
           escolher_entidade; % Chamar script para escolher entidade a ser modificada
           alterar_cor;       % Chamar script para alterar cor da entidade escolhida
           
       case 4 % Alterar tracejado
           
           escolher_entidade; % Chamar script para escolher entidade a ser modificada
           alterar_tracejado; % Chamar script para alterar tracejado da entidade escolhida
           
       case 5 % Voltar
           
           CloseModifying = 'Yes';
           
   end
           
end