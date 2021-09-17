# CAD Simplificado

Algoritmo desenvolvido como trabalho final da disciplina de Programação no curso de Bacharelado em Engenharia Elétrica, na Universidade Federal de São João del-Rei.

Neste trabalho final, a intenção é montar um programa CAD simplificado, mas
baseado na estratégia de estrutura de dados entidade-dicionário. O programa deve ser
capaz de criar e desenhar na tela alguns elementos geométricos básicos (as entidades),
operar algumas transformações sobre eles, bem como salvar e abrir arquivos do
programa.

O programa CAD deste trabalho, deve ser capaz de implementar as seguintes
entidades, que serão desenhadas na tela e incluídas no dicionário:

- Segmento de reta
- Retângulo
- Círculo
- Arco

O programa CAD deve ser capaz de realizar as seguintes edições no desenho
realizado, atualizando a tela, bem como o dicionário.

- Apagar uma entidade: o comando apaga uma determinada entidade tanto
  da tela do computador, bem como do dicionário.
- Trocar o tipo do traçado: auto-explicativo.
- Trocar a cor da linha: auto-explicativo.
- Aumentar / diminuir: o comando faz com que uma entidade mude o seu
  tamanho a partir de um multiplicador informado pelo usuário (por exemplo,
  multiplicador 2 dobra e multiplicador 0.5 diminui pela metade o tamanho do
  elemento). As modificações de aumento ou diminuição de tamanho devem
  incidir sobre as seguintes características: 
  - Segmento de reta: ponto final;
  - Retângulo: vértice final;
  - Círculo e arco: raio.

