#Homework 6
#Question 1
matrix1=matrix(c(7, 2, 9, 4, 12, 13), nrow=2, ncol=3)
matrix2=matrix(c(1, 2, 3, 7, 8, 9, 12, 13, 14, 19, 20, 21), nrow=3, ncol=4)
matrix1%*%matrix2

#Question2
#part A
df= data.frame(
  id= c(1, 2, 3, 4, 5),
  name= c("Peter", "Amy", "Ryan", "Gary", "Michelle"),
  salary= c(623.30, 515.20, 611.00, 729.00, 843.25)
)
#part B
df= cbind(df, department= c("human resources", "sales", "accounting", "management", "IT"))
df
#part C
df [c(1, 3, 5), c(2, 3)]
#part D
x= df[c(1, 4, 5), c(2)]
y= df[c(1, 4, 5), c(3)]
barplot(y, names.arg= x, density= 5)
#part E
summary(df)
"median is Row 1, Min is Row 2, Max is Row 5"
values= df[c(1,2,5), c(3)]
labels= c("Peter: $623.30", "Amy: $515.20", "Michelle: $843.25")
pie(values, label=labels, main= "Summary Statistics for Salaries")

#Question 3
#Must Use valid_function first in order for the User and computer variables to be defined
#Function: result_function (if/else)
# def valid_function():
#   global user_action 
# user_action = input("Enter a choice (rock, paper, scissors): ")
# if user_action == "rock":
#   print(f"\nYou chose {user_action}, computer chose {computer_action}.\n")
# elif user_action == "scissors":
#   print(f"\nYou chose {user_action}, computer chose {computer_action}.\n")
# elif user_action == "paper":
#   print(f"\nYou chose {user_action}, computer chose {computer_action}.\n")
# else:
#   print(f"\nInvalid option. Enter: 'rock,' 'paper,' or 'scissors'\n")
# return user_action
valid_function = function(){
  user_action= readline(prompt="Enter a choice (rock, paper, scissors): ")
  choices = c("rock", "paper", "scissors")
  computer_action = sample(choices, size = 1)
  if (user_action == computer_action) {
    print("Valid move")
  } else if (user_action == "rock" & computer_action == "paper") {
    print("You chose rock, computer chose paper, valid move")
  } else if (user_action == "rock" & computer_action == "scissors") {
    print("You chose rock, computer chose scissors, valid move ")
  } else if (user_action == "scissors" & computer_action == "rock") {
    print("You chose scissors, computer chose rock, valid move")
  } else if (user_action == "scissors" & computer_action == "paper") {
    print("You chose scissors, computer chose paper, valid move")
  } else if (user_action == "paper" & computer_action == "rock") {
    print("you chose paper, computer chose rock, valid move")
  } else if (user_action == "paper" & computer_action == "scissors") {
    print("you chose paper, computer chose scissors, valid move")
  } else
    print("error: invalid move")
  }

valid_function


#Function 2: play_function (while)
# def play_function():
#   print("Play another game?")
#   t=True
#   while t:
#     choice = input("Enter: 'y' or 'n': ")
#     if choice == 'y' or choice == 'Y':
#       random_function()
#       valid_function()
#       result_function()
#       score_function()
#       play_function()
#       t=False
#     else:
#       t=False
#       print("Thanks for Playing!")

#Can only include valid function because it's the only function defined
#normally other functions would be included here
play_function= function(){
  t=T
  print("Play another game?")
  while (t==T){
    choice = readline(prompt="Enter: 'y' or 'n': ")
    if (choice == 'y'){
      valid_function()
      play_function()
      t=F
    } else
      t=F
      print("Thanks for Playing!")
}
}
play_function()

