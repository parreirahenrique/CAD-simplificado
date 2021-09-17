% CAD Simplificado
% Script que apresenta as op��es de desenho - desenhar

CloseDrawing = 'No'; % Vari�vel para determinar se o usu�rio deseja continuar no menu de desenhos

while strcmp(CloseDrawing, 'No') == 1
    
   MenuDesenhar = menu('Menu desenhar', 'Nova entidade', 'Definir estilo', 'Voltar');
   
   switch MenuDesenhar
       
       case 1 % Nova entidade
           
           nova_entidade;  % Chamar script para cria��o de nova entidade 
           
       case 2 % Definir estilo
           
           definir_estilo; % Chamar script para defini��o de estilo da linha
           
       case 3 % Voltar
           
           CloseDrawing = 'Yes';
           
   end
    
end