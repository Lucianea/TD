suppressMessages(require(lpSolve))
# coeficientes na função objetivo 
func.objetivo <- c(12.66, 15.9, 4.5, 32, 0, 0, 0, 0, 0, 0, 0)

# coeficientes nas restrições.
R1=c(0.34, 0.65, 0, 0, 1, 0, 0, 0, 0, 0, 0)
R2=c(0.05, 0.03, 0.05, 0, 0, 1, 0, 0, 0, 0, 0)
R3=c(0.1, 0.05, 0.05, 0, 0, 0, 1, 0, 0, 0, 0)
R4=c(0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0)
R5=c(0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0)
R6=c(1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0)
R7=c(0.51, 0.27, 0.9, 1, 0, 0, 0, 0, 0, 0, 1)


coeficientes.restricoes <- rbind(R1, R2, R3, R4, R5, R6, R7)

# sinal das restrições. Deve obedecer a ordem da matriz de coeficientes
direcao.restricoes <- c(rep("=",7))  

# limite das restrições. Deve obedecer a ordem da matriz de coeficientes
limites.restricoes <- c(900000, 100000, 300000, 50000, 400000, 1680000, 1280000)

# solução
solucao.problema <- lpSolve::lp(direction = "max",            
                                objective.in = func.objetivo,  
                                const.mat = coeficientes.restricoes,
                                const.dir = direcao.restricoes,
                                const.rhs = limites.restricoes, 
                                all.int=F,
                                compute.sens = 1)

# valor da função objetivo na solução
solucao.problema$objval

# Valores para as variáveis de escolha que geram máximo ou mínimo dependendo do problema
solucao.problema$solution