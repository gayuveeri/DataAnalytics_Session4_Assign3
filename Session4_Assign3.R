# 1. states=rownames(USArrests)
# . Get states names with 'w'.
# . Get states names with 'W'.
# 
# 2. Prepare a histogram of the number of characters in each US state.

states<- rownames(USArrests)
states
state_name <- "State Name"


nameWithw <- states[grep('w',states)]
nameWithw
nameWithW <- states[grep('W',states)]
nameWithW

lengthofChars <- nchar(states)
lengthofChars
attributeName <- "No. of Chars"

require(reshape2)
df <- data.frame(states,lengthofChars)
colnames(df) <- c(state_name, attributeName)
print(df)

hist(lengthofChars, main='Histogram of length of chars in US States',
     xlab = 'No. Of Chars', ylab = 'Frequency of States with n length', 
     xlim = c(1,20), ylim=c(1,30) , col= 'green', border= 'blue',las=1, breaks = 10)
