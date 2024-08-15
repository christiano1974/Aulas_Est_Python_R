dados = c(2,1,1,4,0,-4,2,1,5)
A = matrix(data = dados,nrow = 3, ncol = 3); A
eigen(A)$values
eigen(A)$vectors
B = matrix(data = c(2,0,3,0,2,0,-2,-2,-3),nrow=3,ncol = 3); B
round(eigen(B)$values)
round(eigen(B)$vectors)
B%*%matrix(c(0,1,0),nrow=3,ncol=1) == 2*matrix(c(0,1,0),nrow=3,ncol=1)
P = round(eigen(B)$vectors)
class(P)
solve(P)%*%B%*%P
B%*%matrix(c(0,0,1),nrow=3,ncol=1) == -1*matrix(c(0,0,1),nrow=3,ncol=1)
P = eigen(B)$vectors
P
class(P)
round(solve(P)%*%B%*%P)
