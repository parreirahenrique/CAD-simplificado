% CAD Simplificado
% Script para plotar as entidades - plotar_entidade

NomeEntidade = Dicionario.Entidade(N).Descritor;

Valor1 = Dicionario.Entidade(N).Valor1;
Valor2 = Dicionario.Entidade(N).Valor2;
Valor3 = Dicionario.Entidade(N).Valor3;
Valor4 = Dicionario.Entidade(N).Valor4;
Valor5 = Dicionario.Entidade(N).Valor5;

Cor = Dicionario.Entidade(N).CorLinha;
Tipo = Dicionario.Entidade(N).TipoLinha;

figure(1);
hold on;

ajustar_eixos; % Chamar script para ajustar os eixos

axis([(Xmin - 2), (Xmax + 2), (Ymin - 2), (Ymax + 2)]);
set(gca, 'DataAspectRatio', [1 1 1]); % Eixos com mesma proporção
set(gcf,'color','w');                 % Fundo da figura branco

% Plota as entidades que sejam do tipo segmento de reta

if strcmp(NomeEntidade(1), 'S') == 1
    
    X = [Valor1, Valor3];
    Y = [Valor2, Valor4];
    
    plot(X,Y,[Cor,Tipo]);
    
% Plota as entidades que sejam do tipo retângulo
elseif strcmp(NomeEntidade(1), 'R') == 1
    
    Posicao = [Valor1, Valor2, (Valor3 - Valor1), (Valor4 - Valor2)];
    
    rectangle('Position',Posicao,'EdgeColor', Cor, 'LineStyle', Tipo);
    
% Plota as entidades que sejam do tipo círculo
elseif strcmp(NomeEntidade(1), 'C') == 1
    
    Angulo = linspace(0,2*pi,1000);
    
    plot(Valor3*cos(Angulo) + Valor1, Valor3*sin(Angulo) + Valor2, [Cor,Tipo]);
    
% Plota as entidades que sejam do tipo arco
elseif strcmp(NomeEntidade(1), 'A') == 1
    
    Angulo = linspace(Valor4,Valor5,1000);
    
    plot(Valor3*sin(Angulo) + Valor1, Valor3*cos(Angulo) + Valor2, [Cor,Tipo]);

end