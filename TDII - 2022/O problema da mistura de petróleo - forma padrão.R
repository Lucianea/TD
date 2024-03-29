suppressMessages(require(lpSolve))
# coeficientes na fun��o objetivo 
func.objetivo <- c(3, -2, 2, -5, 9, 4, 8, 1, 16, 11, 15, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)

# coeficientes nas restri��es.
R1=c(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0)
R2=c(0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0)
R3=c(0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0)
R4=c(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0)
R5=c(0.3, -0.7, -0.7, -0.7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0)
R6=c(0, 0, 0, 0, 0.7, -0.3, -0.3, -0.3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0)
R7=c(0, 0, 0, 0, -0.1, 0.9, -0.1, -0.1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0)
R8=c(0, 0, 0, 0, 0, 0, 0, 0, 0.7, -0.3, -0.3, -0.3, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0)
R9=c(0, 0, 0, 0, 0, 0, 0, 0, -0.4, 0.6, -0.4, -0.4, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0)
R10=c(0, 0, 0, 0, 0, 0, 0, 0, -0.5, -0.5, 0.5, -0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)


coeficientes.restricoes <- rbind(R1, R2, R3, R4, R5, R6, R7, R8, R9, R10)

# sinal das restri��es. Deve obedecer a ordem da matriz de coeficientes
direcao.restricoes <- rep("=",10)

# limite das restri��es. Deve obedecer a ordem da matriz de coeficientes
limites.restricoes <- c(3500, 2200, 4200, 1800, 0, 0, 0, 0, 0, 0)

# solu��o
solucao.problema <- lpSolve::lp(direction = "max",            
                                objective.in = func.objetivo,  
                                const.mat = coeficientes.restricoes,
                                const.dir = direcao.restricoes,
                                const.rhs = limites.restricoes, 
                                all.int=F,
                                compute.sens = 1)

# valor da fun��o objetivo na solu��o
solucao.problema$objval

# Valores para as vari�veis de escolha que geram m�ximo ou m�nimo dependendo do problema
solucao.problema$solution