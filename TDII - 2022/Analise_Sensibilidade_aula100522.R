#Problema das ligas metálicas
#Pág 40 livro da Elizabeth Goldbarg
# coeficientes na função objetivo 
func.objetivo <- c(3 , 5)

# coeficientes nas restrições.
R1=c(0.5, 0.2) 
R2=c(0.25, 0.3)
R3=c(0.25, 0.5)
coeficientes.restricoes <- rbind(R1, R2, R3)

# sinal das restrições. 
direcao.restricoes <- c("<=","<=", "<=")

# limite das restrições. 
limites.restricoes <- c(16, 11, 15)


solucao.problema <- lpSolve::lp(direction = "max",      objective.in = func.objetivo,  
                               const.mat = coeficientes.restricoes,
                               const.dir = direcao.restricoes,
                               const.rhs = limites.restricoes, 
all.int=F,  compute.sens = 1)

# valor da função objetivo na solução
solucao.problema$objval

# Valores para as variáveis de escolha que geram máximo ou mínimo dependendo do problema
solucao.problema$solution


#Análise de sensibilidade
#
#Quanto podemos variar os preços de venda sem alterar os valores de x1 e x2?

solucao.problema$sens.coef.from
solucao.problema$sens.coef.to
#Note que se alterarmos os valores de venda nestes intervalos
# os valores de x1 e x2 permanecem os mesmos
# O valor da função objetivo será alterado por razões óbvias
# 
# Quanto sobrou de recursos:
#Sobra do recurso 1:
limites.restricoes[1]-sum(R1*solucao.problema$solution)
#Sobra do recurso 2:
limites.restricoes[2]-sum(R2*solucao.problema$solution)
#Sobra do recurso 3:
limites.restricoes[3]-sum(R3*solucao.problema$solution)
# #  
# O preço sombra
# Taxa de variação no valor ótimo se aumentarmos/diminuirmos 
# em 1 unidade os recursos disponíveis de cada restrição

solucao.problema$duals
#Neste problema temos
#Nada muda se aumentarmos o recurso 1, temos sobra dele inclusive
#Aumenta/diminui 5 u.m. no valor da função objetivo a cada
#aumento/redução de 1 unidade do recurso 2
#Aumenta/diminui 7 u.m. no valor da função objetivo a cada
#aumento/reducao de 1 unidade do recurso 3
#
#Quanto posso aumentar/reduzir recursos para que essas
#taxas sejam válidas?
solucao.problema$duals.from
solucao.problema$duals.to

#Testando, vamos reduzir o recurso 2 de 11 para 10
limites.restricoes <- c(16, 10, 15)
solucao.problema <- lpSolve::lp(direction = "max",      objective.in = func.objetivo,  
                               const.mat = coeficientes.restricoes,
                               const.dir = direcao.restricoes,
                               const.rhs = limites.restricoes, 
all.int=F,  compute.sens = 1)
solucao.problema

#O resultado era o que você esperava?
#
#Como um tomador de decisão qual seria sua sujestão
#para aumentar a solução ótima, sem alterar a base ótima?
