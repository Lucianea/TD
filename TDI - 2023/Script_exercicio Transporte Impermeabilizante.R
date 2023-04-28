setwd("C:/Users/TPC02/Documents/
  PesquisaOperacional/R_lpsolve")
Dados<- read.csv2("Transporte_impermeabilizante.csv")
View(Dados)
n = 9 #número de variáveis
m = 6 #número de restrições
coef.restricoes = as.matrix(Dados[1:m,2:(n+1)])
direcao.restricoes = Dados$direcao[1:m]
limites.restricoes = Dados$b[1:m]
func.objetivo = as.vector(t(Dados[(m+1),2:(n+1)]))
solucao.problema = 
  lpSolve::lp(direction = "min",
             objective.in = func.objetivo,  
             const.mat = coef.restricoes,
             const.dir = direcao.restricoes,
             const.rhs = limites.restricoes, 
             all.int=T)
# valor da função objetivo
solucao.problema$objval
# Valores para as variáveis de decisão
solucao.problema$solution

