# Exercise 7.9 #

x1 <- c(-2,-1,0,1,2)
y1 <- c(5,3,4,2,1)
y2 <- c(-3,-1,-1,2,3)

y <- matrix(c(y1,y2),ncol=2,byrow = F)
x <- matrix(c(rep(1,5),x1),ncol = 2,byrow = F)

b_hat1 <- solve(t(x) %*% x) %*% t(x) %*% y1
b_hat1

b_hat2 <- solve(t(x) %*% x) %*% t(x) %*% y2
round(b_hat2,2)

b_hat <- matrix(c(b_hat1,b_hat2),ncol=2,byrow = F)
round(b_hat,2)

y_hat <- x %*% b_hat 
round(y_hat,2)

residuos <- y - y_hat
round(residuos,2)

a <- t(y) %*% y  

b <- t(y_hat) %*% y_hat + t(residuos) %*% residuos

