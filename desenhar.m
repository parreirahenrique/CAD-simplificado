% CAD Simplificado
% Script que apresenta as opções de desenho - desenhar

CloseDrawing = 'No'; % Variável para determinar se o usuário deseja continuar no menu de desenhos

while strcmp(CloseDrawing, 'No') == 1
    
   MenuDesenhar = menu('Menu desenhar', 'Nova entidade', 'Definir estilo', 'Voltar');
   
   switch MenuDesenhar
       
       case 1 % Nova entidade
           
           nova_entidade;  % Chamar script para criação de nova entidade 
           
       case 2 % Definir estilo
           
           definir_estilo; % Chamar script para definição de estilo da linha
           
       case 3 % Voltar
           
           CloseDrawing = 'Yes';
           
   end
    
end