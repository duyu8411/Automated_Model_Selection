mpg <- read.csv("~/Documents/PHD - 3rd Term/Advanced Biostatistics Method III/Final Project/Advanced_Biostatistics_Method/Automated_Model_Selection(AIC,BIC)/auto-mpg.txt",sep="")
names(mpg) <- c("mpg","cyl","displacement","horsepower","weight","acceleration","model_year","origin","car_name")
mpg$horsepower <- as.numeric(levels(mpg$horsepower))[mpg$horsepower]
mpg <- mpg[complete.cases(mpg),]
fit <- lm(mpg~cyl+displacement+horsepower+weight+acceleration,data=mpg)
st <- step(fit)
par(mfrow=c(2,2))
plot(st)
