##### Tutorial Exercise 8 ####

## Problem 1 
# Generate line graph depicting cumulative score for each team as function of time

# load data
# generate matrix/dataframe that tracks scores for each team over time
#   make vectors for time and accumulating scores
#   make dataframes for each team
#   make score vector sequentially add like a, a+b, a+b+c with each time stamp
# make graph with plot(x,y,type='l')
# add second line to graph with lines(x,y)

scores<-read.table("UWvMSU_1-22-13.txt", header = TRUE, stringsAsFactors = FALSE)

UWtime <- c(scores[scores$team=="UW",1])
MSUtime <- c(scores[scores$team=="MSU",1])
# empty variables to store cumulative score at each time
prevUWscore <- 0
prevMSUscore <- 0
# empty vectors to track cumulative store over time
UWscore <- c()
MSUscore <-c()

for (i in 1:nrow(scores)){
  if(scores$team[i]=="UW"){
    prevUWscore <- scores$score[i] + prevUWscore
    UWscore <- append(UWscore, prevUWscore)
  }else{
    prevMSUscore <- scores$score[i] + prevMSUscore
    MSUscore <- append(MSUscore, prevMSUscore)
  }
}

# make dataframes with time and score columns for each team
UWstats <- data.frame(time = UWtime, score = UWscore)
MSUstats <- data.frame(time = MSUtime, score = MSUscore)
# plot
Finalgraph <- plot(UWtime, UWscore, type = "l", col = "red")
lines (MSUtime, MSUscore, col = "green")


## Problem 2
# Write a game called "guess my number" where computer generates random number
#   between 1 and 100. Player types in a number and comupter replies "lower",
#   "higher", or "correct!". Player can guess up to 10 times.

# make variable answer<-randomly selected number
# random selection from vector containing set of integers with sample()
# allow user to input just the number
# if else statements for logic tests
#   if answer > input is true, then print "higher"
# limit up to 10 times

## Problem 2
# Write a game called "guess my number" where computer generates random number
#   between 1 and 100. Player types in a number and comupter replies "lower",
#   "higher", or "correct!". Player can guess up to 10 times.

# make variable answer<-randomly selected number
# random selection from vector containing set of integers with sample()
# allow user to input just the number
# if else statements for logic tests
#   if answer > input is true, then print "higher"
# limit up to 10 times
