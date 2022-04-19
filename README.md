# Teoria da Decisão

Métodos para tomada de decisão como Simplex, AHP, AHP gaussiano

# Teoria da Decisão II

## Modelagem de Problemas

### Modelos de Simulação

São modelos que procuram oferecer uma representação do mundo real com o objetivo de permitir a geração e análise de alternativas, antes da implementação de qualquer uma delas. Permite criar cenário futuros possíveis e testar alternativas.

### Exemplo de Modelo de Simulação

Uma empresa vende um só produto e deseja simular o lucro final sob várias hipóteses de preço. Neste caso, queremos relacionar o preço com o lucro obtido.

As variáveis do problema:

- *Preço*: é o preço de venda de 1 queijo

Relação entre preço e quantidade vendida: quanto maior o preço menor a quantidade vendida

- *Quant*: quantidade vendida em 1 mês
- *Receita*: é a receita total obtida com a venda do produto
- *Lucro*: lucro líquido no mês

**Modelo**

Quant = 1000 - 10*Preço

Receita = Quant*Preço

Lucro = Receita - Custo

Simulamos uma variação de preço e podemos observar o impacto no lucro.


### Modelos de Otimização

São modelos matemáticos que selecionam uma única alternativa considerada **ótima** segundo um ou mais critérios estabelecidos pelo analista.

### Exemplo de Modelo de Otimização

A empresa quer estudar a política de estocagem de forma a otimizar sua operação, reduzindo custos.

Dados do problema:

O custo anual para manter um item do produto em estoque é estimado em $50,00. 

O número de itens que comporão o estoque é estimado em 1000 por ano.

A colocação de encomenda de um pedido tem custo fixo de $1000 por pedido

A quantidade máxima que o fornecedor pode entregar é de 180 unidades do produto por vez

- A = quantidade anual do produto que a empresa comercializa
- S = custo de manutenção do estoque, por unidade, por ano
- P = custo fixo de colocação de encomenda por pedido
- Q = quantidade ordenada ao fornecedor para suprimento

**Modelo**

Minimizar {Custo de manutenção do estoque + custo de colocação de encomenda}

Onde:

Custo de manutenção do estoque = nível médio do estoque\*custo unitário de manutenção

Custo de colocação da encomenda = número de ordens\*custo de colocação de ordem

Restrição:

Q < = 180

**Modelo Matemático**

Minimizar QS/2+AP/Q = 50Q/2 + 1000(1000)/Q

Restrição: Q <= 180

**Solução Ótima**

Derivando a função de minimização em relação a Q obtemos Q*=200.

No entanto para satisfazer a restrição Q <= 180, a solução ótima seria encomendar 180 itens por vez.


# Problemas a serem estudados

Cada aluno deverá apresentar um dos problemas abaixo. Definir as datas e pessoas.

- Problema de alocação de recursos: Produção de cimento - Emmanuel 12/04/2022 - ref possível: https://multivix.edu.br/wp-content/uploads/2018/08/aplicacao-da-pesquisa-operacional-na-reducao-de-custos-de-uma-industria-cimenteira.pdf
- O Problema da Mistura de Petróleo - Matheus 12/04/2022
- Problema de transferência de empregados - Renato
- O Problema da Dieta - Cristiane 19/04/2022
- Problema da troca de equipamento - 
- Problema da Otimização de Padrões de Produção ( I ) (17) - Clayson Sá 26/04/2022
- Problema clássico de transporte - Késia 19/04/2022
- Problema de transporte com transbordo - Vanessa 26/04/2022
- Problema de alocação de tarefas - Roberta 26/04/2022
- O Problema do Casamento e da Casa Própria (Misto) (23) - Virginia 26/04/2022
- O Problema da clínica cirúrgica - Alexandra 03/05/2022
- O Problema da Câmara de Segurança ( I ) (24) - Patrícia 03/05/2022
- O Problema do Incêndio Florestal – Combate Massivo ao Incêndio ( I ) (27) Thaynara 19/04/2022

# Bibliografia

1- Introdução à Pesquisa Operacional - Métodos e Modelos para a análise de decisão, Eduardo Leopoldino de Andrade, 2a. ed., LTC, 2000.

2- Pesquisa Operacional para Cursos de Engenharia - Patricia Belfiore e Luis Paulo Fávero, Elsevier, 2013.

3- Programação Linear e Fluxo em Redes - Marco César Goldbarg, Henrique Pacca Loureiro Luna, Elizabeth Ferreira Gouvêa Goldbarg. - 1. ed. - Rio de Janeiro : Elsevier, 2015.

4- Pesquisa operacional [recurso eletrônico] / Marcos Arenales...[et al.]. - Rio de Janeiro : Elsevier : ABEPRO, 2011.

# Aulas online

Toda terça de 16h às 19h na sala virtual: Teoria da Decisão II
Teoria da Decisão II
Link da sala online: https://meet.google.com/sww-jqjb-kks




