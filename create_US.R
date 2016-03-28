# create a data frame object US
US <- data.frame(State = row.names(state.x77))
US <- cbind(US, as.data.frame(state.x77, row.names=F))

# add a population density (a factor)
pop_area <- with(US, Population/Area)
breaks <- quantile(pop_area, probs=c(0,0.33,0.66,1))
US$PoptoArea <- factor(cut(pop_area, breaks=breaks, include.lowest = T),
                      labels=c("low","medium","high"))

colnames(US)[c(5,7)] <- c("Life_Exp","HS_Grad")
save(file="US.Rda",US)
