# Resolvendo sistema de equações lineares:
# eq1: 3 x - 4 y + 5 z = 0 , eq2: 2 x + 3 y - z = 5 , eq3: 4 x + y + 2 z = 3
# solução
# matriz dos coeficientes
dados = c(3,-4,5,2,3,-1,4,1,2)
A = matrix(data = dados,nrow = 3,ncol = 3, byrow = TRUE)
# matriz dos termos independentes
dados = c(0,5,3)
B = matrix(data = dados,nrow = 3,ncol=1)
# matriz solução
X = solve(A)%*%B
row.names(X) = c('x =','y =','z =')
print(X)
# ---------------------------------------------------
# Problema de interpolação para resolução de integral
# simples
# Considere a integra definida de zero a 1 da seguinte função
# f(x) = (pi*sin(x^2))/2
# Solução
# Vamos considerar a seguinte partição P do intervalo [0,1]
# P = {0, 0.25, 0.50, 0.75, 1}
# Solução
f = function(x){sin(pi*x^2/2)}
# matriz A
dados = c(0.25^4,0.25^3,0.25^2,0.25,0.50^4,0.50^3,0.50^2,0.50,
          0.75^4,0.75^3,0.75^2,0.75,1,1,1,1)
A = matrix(data = dados,nrow = 4,ncol = 4,byrow = TRUE)
# matriz B
dados = c(f(0.25),f(0.50),f(0.75),f(1))
B = matrix(data = dados,nrow = 4,ncol=1)
# Resolvendo o sistema A.X = B e determinando os 
# coeficientes do polinômio P
X = solve(A)%*%B
X
# definindo o polinômio P
P = function(x){-2.005*x^4 + 2.144*x^3 + 0.762*x^2 + 0.0988*x}
valores_x = seq(0,1,0.05)
valores_y_f = f(valores_x)
valores_y_P = P(valores_x)
par(mfrow = c(1,2))
plot(valores_x,valores_y_f,col = 'blue',type = 'l',main = "função f(x)")
plot(valores_x,valores_y_P,col = 'red',type = 'l',main = "função polinomial P")
# solução das integrais definidas para as funções f e P
# no intervalo [0,1]
print('Valor da integral definida da função f no intervalo [0,1]:')
integrate(f,0,1)
print('Valor da integral definida da função polinomial P no
      intervalo [0,1]:')
integrate(P,0,1)
# Erro cometido
Erro = 0.4382591 - 0.4384
Erro
# Observação: Podemos reduzir o erro no cálculo aumentando o número de pontos ou de valores na partição do intervalo [0,1].

