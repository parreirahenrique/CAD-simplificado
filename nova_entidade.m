% CAD Simplificado
% Script para cria��o de nova entidade - nova_entidade

clc;

Dicionario.Entidade(NEntidades) = Entidade;           % Criada uma nova entidade na posi��o atual do dicion�rio

Dicionario.Entidade(NEntidades).TipoLinha = LineType; % Diz o tipo da linha para plotagem de acordo com o definido em 'Definir estilo'
Dicionario.Entidade(NEntidades).CorLinha = LineColor; % Diz a cor da linha para plotagem de acordo com o definido em 'Definir estilo'

Descritor = menu('Tipo de entidade', 'Segmento de reta', 'Ret�ngulo', 'C�rculo', 'Arco');

switch Descritor
    
    case 1
        
        NS = NS + 1; % Aumenta o contador do n�mero de segmentos de reta criados
        
        Dicionario.Entidade(NEntidades).Descritor = ['Segmento de Reta ', num2str(NS)];
        
        Valor1 = input('Valor da abscissa inicial: ');
        Valor2 = input('Valor da ordenada inicial: ');
        Valor3 = input('Valor da abscissa final: ');
        Valor4 = input('Valor da ordenada final: ');
        
        Dicionario.Entidade(NEntidades).Valor1 = Valor1;
        Dicionario.Entidade(NEntidades).Valor2 = Valor2;
        Dicionario.Entidade(NEntidades).Valor3 = Valor3;
        Dicionario.Entidade(NEntidades).Valor4 = Valor4;
        
        clc;
        
    case 2
        
        NR = NR + 1; % Aumenta o contador do n�mero de ret�ngulos criados
        
        Dicionario.Entidade(NEntidades).Descritor = ['Ret�ngulo ', num2str(NR)];
        
        Valor1 = input('Valor da abscissa do v�rtice inicial: ');
        Valor2 = input('Valor da ordenada do v�rtice inicial: ');
        Valor3 = input('Valor da abscissa do v�rtice final: ');
        Valor4 = input('Valor da ordenada do v�rtice final: ');
        
        Dicionario.Entidade(NEntidades).Valor1 = Valor1;
        Dicionario.Entidade(NEntidades).Valor2 = Valor2;
        Dicionario.Entidade(NEntidades).Valor3 = Valor3;
        Dicionario.Entidade(NEntidades).Valor4 = Valor4;
        
        clc;
        
    case 3
        
        NC = NC + 1; % Aumenta o contador do n�mero de c�rculos criados
        
        Dicionario.Entidade(NEntidades).Descritor = ['C�rculo ', num2str(NC)];
        
        Valor1 = input('Valor da abscissa do centro do c�rculo: ');
        Valor2 = input('Valor da ordenada do centro do c�rculo: ');
        Valor3 = input('Valor do raio do c�rculo: ');
        
        Dicionario.Entidade(NEntidades).Valor1 = Valor1;
        Dicionario.Entidade(NEntidades).Valor2 = Valor2;
        Dicionario.Entidade(NEntidades).Valor3 = Valor3;
        
        clc;
        
    case 4
        
        NA = NA + 1; % Aumenta o contador do n�mero de arcos criados
        
        Dicionario.Entidade(NEntidades).Descritor = ['Arco ', num2str(NA)];
        
        Valor1 = input('Valor da abscissa do centro do arco: ');
        Valor2 = input('Valor da ordenada do centro do arco: ');
        Valor3 = input('Valor do raio do arco: ');
        Valor4 = input('Valor do �ngulo (em graus) inicial do arco: ');
        Valor5 = input('Valor do �ngulo (em graus) final do arco: ');
        
        Dicionario.Entidade(NEntidades).Valor1 = Valor1;
        Dicionario.Entidade(NEntidades).Valor2 = Valor2;
        Dicionario.Entidade(NEntidades).Valor3 = Valor3;
        Dicionario.Entidade(NEntidades).Valor4 = Valor4*pi/180;
        Dicionario.Entidade(NEntidades).Valor5 = Valor5*pi/180;
        
        clc;
        
end

N = NEntidades;

plotar_entidade % Chamar script para plotar a entidade atual

NEntidades = NEntidades + 1; % Aumenta o contador do n�mero de entidades