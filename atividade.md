Exemplos de Entradas Válidas

10 > 5 and 3 < 8
(7 >= 4) or (2 != 2)
(10 < 20) and (5 > 3 or 1 == 0)
not 5 > 3
(8 <= 10) and not (4 == 4)
1 == 1 or 2 < 3 and 4 > 1

Exemplos de Entradas Inválidas

10 > and 5
(5 < 3
10 20 > 5
.
and 5 > 3
10 > (5 and 3)
5 == 

---------------------------

A gramática foi organizada de forma hierárquica para refletir corretamente a precedência e a associatividade dos operadores lógicos e relacionais. A estrutura sintática foi dividida em níveis, onde cada nível representa um grau diferente de prioridade na avaliação das expressões. Os operadores relacionais (>, <, >=, <=, ==, !=) possuem maior precedência, pois são responsáveis por comparar valores inteiros e produzir resultados booleanos básicos. Em seguida, posiciona-se o operador lógico not, que atua sobre uma única expressão e, por isso, possui precedência maior que os operadores binários and e or. Entre os operadores lógicos binários, and tem precedência maior que or, garantindo que expressões como A or B and C sejam interpretadas corretamente como A or (B and C).

A associatividade também foi considerada na definição das regras. Os operadores and e or são associativos à esquerda, o que significa que expressões encadeadas são avaliadas da esquerda para a direita, como em (A and B) and C. Já o operador not apresenta associatividade à direita, permitindo construções como not not A, interpretadas como not (not A). Além disso, a gramática permite o uso de parênteses para que o usuário possa alterar explicitamente a ordem de avaliação, garantindo maior flexibilidade e controle sobre a interpretação da expressão. Essa organização assegura clareza estrutural, correção formal e aderência aos princípios clássicos de precedência e associatividade utilizados em linguagens formais e linguagens de programação.