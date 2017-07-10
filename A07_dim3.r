
pdf(file="plot7.pdf")
library(lattice)

a <- 1:10
b <- 1:15
eg <- expand.grid(x=a,y=b)
eg$z <- eg$x^2 + eg$x*eg$y
wireframe(z~x+y, eg)

t<-seq(-2*pi, 2*pi, length.out=200)
cloud(z~x+y,data.frame(x=3*cos(t),y=3*sin(t), z=2*t))

t<-seq(-2*pi, 2*pi, length.out=200)
cloud(z~x+y,data.frame(x=3*cos(t),y=3*sin(t), z=2*t))
