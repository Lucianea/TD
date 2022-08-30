library(readxl)
Dados<- read_excel("Dados_casamento_Casa.xlsx")
View(Dados)

coeficientes.restricoes = as.matrix(Dados[2:9])
direcao.restricoes = Dados$direcao
limites.restricoes = Dados$b
func.objetivo = rep(1,8)


solucao.problema <- lpSolve::lp(direction = "max",      objective.in = func.objetivo,  
                               const.mat = coeficientes.restricoes,
                               const.dir = direcao.restricoes,
                               const.rhs = limites.restricoes, 
all.bin=T,  compute.sens = 1)

solucao.problema

# valor da função objetivo na solução
solucao.problema$objval

# Valores para as variáveis de escolha que geram máximo ou mínimo dependendo do problema
solucao.problema$solution
