###### Normal
library(mgcv)
set.seed(12)
f2=function(x){
  0.2*x^11*(10*(1-x))^6+10*(10*x)^3*(1-x)^10
}
ysim=function(n=500,scale=2){
  x=runif(n)
  e=rnorm(n,0,scale)
  f=f2(x)
  g=exp(f/4)
  y=f+e
  data.frame(y=y,x2=x,f2=f)
}
df=ysim()
head(df)

model.gam=gam(y~s(x2),data = df)
summary(model.gam)
AIC(model.gam)
model.glm=glm(y~x2,data = df)
summary(model.glm)
library(modEvA)
Dsquared(model.glm)

set.seed(10)
nsim=50
drawX=function(x,n){
  runif(n,min=min(x),max=max(x))
}
newx=data.frame(x2=drawX(df[,"x2"],n=nsim))
sig2=model.gam$sig2
set.seed(10)
newx=transform(newx,newy=predict(model.gam,newx,type="response"))
newx=transform(newx,ysim=rnorm(nsim,mean=newy, sd=sqrt(sig2)))
pred=with(df,data.frame(x2=seq(min(x2),max(x2),length=500)))
pred=transform(pred,fitted=predict(model.gam,newdata=pred,type="response"))

library("ggplot2")
theme_set(theme_bw())

ggplot(df) +
  geom_point(aes(x = x2, y = y), colour = "grey") +
  geom_line(aes(x = x2, y = f2), colour = "forestgreen", size = 1.3) +
  geom_line(aes(x = x2, y = fitted), data = pred, colour = "blue") +
  geom_point(aes(x = x2, y = newy), data = newx, colour = "blue", size = 2) +
  geom_point(aes(x = x2, y = ysim), data = newx, colour = "red",
             size = 2)

###### Poisson
library(mgcv)
set.seed(12)
nonf=function(x){
  0.2*x^11*(10*(1-x))^6+10*(10*x)^3*(1-x)^10
}
ysim=function(n=500,scale=2){
  x=runif(n)
  f=nonf(x)
  g=exp(f/4)
  y=rpois(rep(1,n),g)
  data.frame(y=y,x2=x,nonf=f,lambda=g)
}
df=ysim()
model.gam=gam(y~s(x2),data = df)
summary(model.gam)
AIC(model.gam)

model.glm=glm(y~x2, data=df, family = "poisson")
summary(model.glm)
library(modEvA)
Dsquared(model.glm)

set.seed(10)
nsim=50
drawX=function(x,n){
  runif(n,min=min(x),max=max(x))
}
newx=data.frame(x2=drawX(df[,"x2"],n=nsim))

set.seed(10)
newx=transform(newx,newy=predict(model.gam,newx,type="response"))
newx=transform(newx,ysim=rpois(rep(1,nsim),exp(newy/4)))
pred=with(df,data.frame(x2=seq(min(x2),max(x2),length=500)))
pred=transform(pred,fitted=predict(model.gam,newdata=pred,type="response"))

library("ggplot2")
theme_set(theme_bw())

ggplot(df) +
  geom_point(aes(x = x2, y = y), colour = "grey") +
  geom_line(aes(x = x2, y = nonf), colour = "forestgreen", size = 1.3) +
  geom_line(aes(x = x2, y = fitted), data = pred, colour = "blue") +
  geom_point(aes(x = x2, y = newy), data = newx, colour = "blue", size = 2) 