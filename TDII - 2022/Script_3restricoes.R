#Solucionando o problema
# com a terceira restrição e na forma padrão

# coeficientes na função objetivo 
func.objetivo <- c(4 , 1, 0, 0, 0)

# coeficientes nas restrições.
R1=c(2, 3, 1, 0, 0) 
R2=c(2, 1, 0, 1, 0)
R3=c(0, 1, 0, 0, -1)
coeficientes.restricoes <- rbind(R1, R2, R3)

# sinal das restrições. 
direcao.restricoes <- c("=","=", "=")

# limite das restrições. 
limites.restricoes <- c(12,8,1)


solucao.problema <- lpSolve::lp(direction = "max",      objective.in = func.objetivo,  
                               const.mat = coeficientes.restricoes,
                               const.dir = direcao.restricoes,
                               const.rhs = limites.restricoes, 
all.int=F,  compute.sens = 1)

# valor da função objetivo na solução
solucao.problema$objval

# Valores para as variáveis de escolha que geram máximo ou mínimo dependendo do problema
solucao.problema$solution

#Solução com valores inteiros

solucao.problema <- lpSolve::lp(direction = "max",      objective.in = func.objetivo,  
                               const.mat = coeficientes.restricoes,
                               const.dir = direcao.restricoes,
                               const.rhs = limites.restricoes, 
all.int=T,  compute.sens = 1)

# valor da função objetivo na solução
solucao.problema$objval

# Valores para as variáveis de escolha que geram máximo ou mínimo dependendo do problema
solucao.problema$solution

#Compare as resposta.