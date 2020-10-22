## Problem 2
# Write a game called "guess my number" where computer generates random number
#   between 1 and 100. Player types in a number and computer replies "lower",
#   "higher", or "correct!". Player can guess up to 10 times.

# make vector of integers and random selection from vector with sample()
# make variable answer<-randomly selected number
# allow user to input just the number
# if else statements for logic tests
#   if answer > input is true, then print "higher"
# limit up to 10 times

integers <- c(1:100)
answer <- sample(integers, 1)
guess <- 0
cat("I'm thinking of a number 1-100... \n")

# make function to read the guess as an input
guessinput <- function(){
  number <- readline(prompt = "Your Guess:")
  return(as.integer(number))
}

# compare guess to answer, up to 10 times
# stop game if correct
guesslimit = 10

for (i in 1:(guesslimit+1)){
  if (i <= guesslimit){
    guess[i] <- guessinput()
    if (guess[i] == answer)
    {cat("Correct!")
      break}
    else if (guess[i] > answer)
    {cat("Lower\n")} 
    else if (guess[i] < answer)
    {cat("Higher\n")}
  }
  else {cat("You lose.")}
}


