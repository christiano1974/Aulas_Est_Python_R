#Exemplo 1
P = matrix(data = c(0.8,0.4,0.2,0.6),nrow = 2,ncol=2,byrow = TRUE)
P0 = matrix(data = c(1,0),nrow = 2,ncol = 1)
colnames(P) = c('E','C')
rownames(P) = c('E','C')
rownames(P0) = c('E','C')
P
P0
# Probabilidade do dia estar ensoralado depois de 2 dias
P1 = P%*%P0
P2 = P%*%P1
P2
# Cadeia de Markov
C = P%*%P0
for(k in 1:20){
  print(k)
  print(C)
  C = P%*%C
}
# Obs: cadeia estacionária (aprox. Ensoralado 67% e Chuvoso 33%)
# gráfico

#Exemplo 2
dados = c(0.1,0.2,0.3,0.4,0.6,0.3,0.3,0.2,0.2,0.4,0.3,0.2,rep(0.1,3),0.2)
length(dados)
P = matrix(data = dados,nrow = 4,ncol = 4,byrow = TRUE)
P0 = matrix(data = c(1,0,0,0),nrow = 4,ncol=1)
colnames(P) = c('P1','P2','P3','P4')
rownames(P) = c('P1','P2','P3','P4')
rownames(P0) = c('P1','P2','P3','P4')
P
P0
# Probabilidades após 3 jogadas
P1 = P%*%P0
P2 = P%*%P1
P3 = P%*%P2
P3
C = P%*%P0
for(k in 1:20){
       print(k)
       print(C)
       C = P%*%C
}
# Obs: cadeia estacionária 
# P1 - 23% , P2 - 36% , P3 - 30% e P4 - 11% (aprox.) 

# exemplo 3
dados = c(0.1,0.6,0.3,0.4,0.3,0.3,0.2,0.5,0.3)
P = matrix(data = dados,nrow = 3,ncol = 3)
P0 = matrix(data = c(0.25,0.40,0.35),nrow = 3,ncol = 1)
rownames(P) = c('A','B','C')
colnames(P) = c('A','B','C')
rownames(P0) = c('A','B','C')
# probabilidades após 2 cliques
P1 = P%*%P0
P2 = P%*%P1
P2
C = P%*%P0
for(k in 1:20){
  print(k)
  print(C)
  C = P%*%C
}

# cadeia estacionária 
# A - 26%  ,  B - 44%  e C - 30% (aprox.)