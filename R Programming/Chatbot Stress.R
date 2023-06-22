stress_bot <- function() {
  print("Welcome to Stress Test 🤯")
  print("Stress Test! have 5 questions to determine your stress levels")
  flush.console()
  while(TRUE) {
    name <- readline("What's your name: ")
    print(paste("Hello",name))
    print("You can choose score '0-3' to answer the question when 0=Never, 1=Sometimes, 2=Often, 3=Almost Always")
    flush.console()
    # Q1
    while(TRUE) {
      q1 <- as.numeric(readline("1. Do you hard to sleep at night? 🥱[0-3] : "))
      if(q1 >= 0 & q1 <= 3 ) {
        print("Go to question 2")
        flush.console()
        break
      } else {
        print("You doesn't answer the question!!")   
        flush.console()
      } 
    }
    # Q2
    while(TRUE) {
      q2 <- as.numeric(readline("2. Do you have trouble staying focused on the present? [0-3] : "))
      if(q2 >= 0 & q2 <= 3 ) {
        print("Go to question 3")
        flush.console()
        break
      } else {
        print("You doesn't answer the question!!!")   
        flush.console()
      } 
    }
    # Q3
    while(TRUE) {
      q3 <- as.numeric(readline("3. Do you feel nervous, annoyed or furious over little thing? 😣[0-3] : "))
      if(q3 >= 0 & q3 <= 3 ) {
        print("Go to question 4")
        flush.console()
        break
      } else {
        print("You doesn't answer the question!")   
        flush.console()
      } 
    }
    # Q4
    while(TRUE) {
      q4 <- as.numeric(readline("4. Do you aways feel bored? [0-3] : "))
      if(q4 >= 0 & q4 <= 3 ) {
        print("Go to question 5")
        flush.console()
        break
      } else {
        print("You doesn't answer the question")   
        flush.console()
      } 
    }
    # Q5
    while(TRUE) {
      q5 <- as.numeric(readline("5. Do you separate yourself from those around you such as friends or family? [0-3] : "))
      if(q5 >= 0 & q5 <= 3 ) {
        print("Go to result")
        flush.console()
        break
      } else {
        print("You doesn't answer the question")   
        flush.console()
      } 
    }
    # sum score
    score <- sum(q1, q2, q3, q4, q5)
    print(paste("Your risk score is",score ))
    flush.console()
    
    if(score <= 4) {
      print("Your stress level is 'Low Stress' it's mean you are in a state of relaxation.")
    }   else if(score <= 7) {
      print("Your stress level is 'Middle Stress' ")
      print("If you are in this state more than 4-8 hrs can cause tired.")
      print(paste(name, "find relaxing things to do ++")) 
    }   else if(score <= 9) {
      print("Your stress level is 'High Stress!' ") 
      print("Change your behavior and stress reduction.")
      print(paste(name, "I think you need to take a break now!"))
    }   else if(score <= 15) {
      print("Your stress level is 'Very High Stress!!!' ") 
      print(paste(name, "you need to change your behavior and reduce your stress."))
      print("create your own space to relax yourself :)")
    }
    flush.console()
    print("Thank you for join our questions. 😁")
    
    break
  }
}
st_bot()
