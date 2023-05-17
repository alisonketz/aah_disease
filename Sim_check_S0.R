
# hazard
h <- runif(100,0.05,0.15)

# cumulative hazard
ch <- cumsum(h)

# cumulative survival
S0 <- exp(-ch)
plot(1:100,S0)

# cumulative survival conditional on previous cumulative survival
# (assume period length of 10)
s1 <- c(S0[10],S0[seq(20,100,10)]/S0[seq(10,90,10)])

# alternatively, calculate cum survival only over each of the intervals
s2 <- rep(0,10)
for(i in 1:10){
    s2[i] <- exp(-sum(h[(10*(i-1)+1):(10*i)]))
}

# compare
rbind(s1,s2)

# floating point decimal issue returns FALSE for some (match to 14-16 decimals)
s1 == s2

# TRUE
all.equal(s1,s2)
