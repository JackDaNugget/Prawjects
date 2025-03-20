.intel_syntax noprefix
.section .data
BeginText: 
.ascii "Welcome to the artillery shooting game! try your best to find eachother's location, good luck!\n\0"
Question:
.ascii "Where would you like to move?\n\0"

.section .text
.global Begin


# this is a blank comment (false)


EnemyPosition:
mov rsi, 100
call GetRandom    #rsi = random number between 0 and 99




Begin:
lea rsi, BeginText
call PrintString
lea rsi, Question
call PrintString
call ReadInteger

