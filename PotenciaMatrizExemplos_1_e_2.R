#exemplo 1. Dada a matriz A determine as potências
# A^1, A^2, A^3, ..., A^10
# solução
A = matrix(data = c(1,2,0,1),nrow = 2,ncol=2)
C = A
for (n in 1:10){
  print(n)
  print(C)
  C = C%*%A
}
# exemplo 2. Dada a matriz A determine as potências
# A^1, A^2, A^3, ..., A^10
# solução 
A = matrix(data = c(1,0,0,1,2,0,0,0,1),nrow = 3, ncol =3)
C = A
for (n in 1:10){
  print(n)
  print(C)
  C = C%*%A
}
