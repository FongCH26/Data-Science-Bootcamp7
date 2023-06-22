# pao ying choob


choice <- c("hammer", "scissor", "paper")

play_game <- function(){
  print("Welcome to pao ying choob")
  print("Get 'stop' to quit game.")
  user_name <- readline("What is your name? : ")
  print(paste("Are you ready? You have 3 choices:"))
  print(choice)
  
  user_point <- 0
  computer_point <- 0
  
  
  while(TRUE) {
    user_select <- readline("Choose one: ")
    computer_select <- sample(choice,1)
    
    if (user_select == "stop"){
      
      if(user_point > computer_point){
        print("You win!")
      } else if (user_point < computer_point){
        print("Sorry, You lost!")
      } else {
        print("Tie!")
      }
      
      print(paste(user_name, user_point, ":", computer_point, "Computer"))
      break
    } else {
      
      
      if (user_select == computer_select){
        print(computer_select)
        print("tie!")
      } else if (user_select == "hammer" & computer_select == "scissor"){
        print(computer_select)
        print("You win!")
        user_point <- user_point + 1
      } else if (user_select == "hammer" & computer_select == "paper"){
        print(computer_select)
        print("You lost!")
        computer_point <- computer_point + 1
      } else if (user_select == "scissor" & computer_select == "paper"){
        print(computer_select)
        print("You win!")
        user_point <- user_point + 1
      } else if (user_select == "scissor" & computer_select == "hammer"){
        print(computer_select)
        print("You lost!")
        computer_point <- computer_point + 1
      } else if (user_select == "paper" & computer_select == "scissor"){
        print(computer_select)
        print("You lost!")
        computer_point <- computer_point + 1
      } else if (user_select == "paper" & computer_select == "hammer"){
        print(computer_select)
        print("You win!")
        user_point <- user_point + 1
      } else {
        print("Sorry, Please try again!")
        print(choice)
      }
    }
  }
}

play_game()
