% CAD Simplificado
% Script para aumentar a proporção da entidade escolhida - aumentar_proporcao

Razao = input('Qual a razão de aumento da entidade? \n');

NomeEntidade = Dicionario.Entidade(EscolherEntidade).Descritor;

Valor1 = Dicionario.Entidade(EscolherEntidade).Valor1;
Valor2 = Dicionario.Entidade(EscolherEntidade).Valor2;
Valor3 = Dicionario.Entidade(EscolherEntidade).Valor3;
Valor4 = Dicionario.Entidade(EscolherEntidade).Valor4;

if strcmp(NomeEntidade(1), 'S') == 1 || strcmp(NomeEntidade(1), 'R') == 1
    
    Valor3 = Valor1 + Razao*(Valor3 - Valor1);
    Valor4 = Valor2 + Razao*(Valor4 - Valor2);
    
elseif strcmp(NomeEntidade(1), 'C') == 1 || strcmp(NomeEntidade(1), 'A') == 1
    
    Valor3 = Valor3*Razao;
    
end

% Atualizando os novos valores na entidade

Dicionario.Entidade(EscolherEntidade).Valor3 = Valor3;
Dicionario.Entidade(EscolherEntidade).Valor4 = Valor4;


% Plotando novamente todas as entidades

figure(1)
clf;
title(NomeArquivo);
hold on;

for N = 1:(NEntidades - 1)
    
    plotar_entidade;
    
end