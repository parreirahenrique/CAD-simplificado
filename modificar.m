% CAD Simplificado 
% Script para modificar entidades criadas - modificar

CloseModifying = 'No'; % % Vari�vel para determinar se o usu�rio deseja continuar no menu de modifica��es

while strcmp(CloseModifying, 'No') == 1
    
   MenuModificar = menu('Menu modificar', 'Aumentar propor��es',...
                                           'Reduzir propor��es',...
                                                  'Alterar cor',...
                                            'Alterar tracejado',...
                                                       'Voltar');
   
   switch MenuModificar
       
       case 1 % Aumentar propor��es
           
           escolher_entidade;   % Chamar script para escolher entidade a ser modificada
           aumentar_proporcao; % Chamar script para aumentar propor��es da entidade escolhida
           
       case 2 % Reduzir propor��es
           
           escolher_entidade;   % Chamar script para escolher entidade a ser modificada
           reduzir_proporcao;  % Chamar script para reduzir propor��es da entidade escolhida
           
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