##### Tutorial Exercise 8 ####

## Problem 1 
# Generate line graph depicting cumulative score for each team as funcion of time

# load data
# generate dataframe that tracks scores for each team over time
# make graph with plot(x,y,type='1')
# add second line to graph with lines(x,y)

scores<-read.table("UWvMSU_1-22-13.txt", header = TRUE, stringsAsFactors = FALSE)


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
