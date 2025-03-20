.intel_syntax noprefix
.data

Question1:
  .ascii "Do you like potatoes?(1. Yes, 2. No)\n\0"

Question2:
  .ascii "Do you enjoy Splatoon?(1. Yes, 2. No)\n\0"

Question3:
  .ascii "Do you like Marvel Rivals?(1. Yes, 2. No)\n\0"

Question4:
  .ascii "Would you like to go to Japan?(1. Yes, 2. No)\n\0"
Answer1:
     .ascii "Potatoes are really good but please make baked potatoes.\n\0"
Answer2:
     .ascii "Splatoon is really fun! I recommend the third game even though the second is my personal favorite for its time.\n\0"
Answer3:
     .ascii "It's a pretty new game but I heard amazing things about it and its development.\n\0"
Answer4:
     .ascii "Japan is really fun, you would love it!.\n\0"
GoodbyeString:
  .ascii " Thank you for answering!\n\0"
.text
.global Begin
.global AskQuestion1
.global AskQuestion2
.global AskQuestion3
.global AskQuestion4
.global Goodbye

Begin:

AskQuestion1:
lea rsi, Question1
call PrintString
call ReadInteger  #rsi = user's input
cmp rsi, 1
jne AskQuestion2
lea rsi, Answer1
call PrintString
AskQuestion2:
lea rsi, Question2
call PrintString
call ReadInteger  #rsi = user's input
cmp rsi, 1
jne AskQuestion3
lea rsi, Answer2
call PrintString
AskQuestion3:
lea rsi, Question3
call PrintString
call ReadInteger  #rsi = user's input
cmp rsi, 1
jne AskQuestion4
lea rsi, Answer3
call PrintString
AskQuestion4:
lea rsi, Question4
call PrintString
call ReadInteger  #rsi = user's input
cmp rsi, 1
jne Goodbye
lea rsi, Answer4
call PrintString

Goodbye:
lea rsi, GoodbyeString
call PrintString

call ExitProgram
