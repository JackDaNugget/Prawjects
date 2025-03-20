#lab1.asm
# Angel Pineda


.intel_syntax noprefix
.data
Message:
 .ascii "Hello, world!\n\0"



Button:
.ascii "Beep\n\0"



Game:
.ascii "My Name is Angel Pineda and I like Terraria\n\0"


Quote:
.ascii "Would you rather have unlimited bacon, but no more games, Or games, unlimited games- but no games\n\0"


Boop:
.ascii "Boop\n\0"


.text
.global Begin

Begin:
lea rsi, Message
call PrintString
lea rsi, Button
call PrintString
lea rsi, Game
call PrintString
lea rsi, Quote
call PrintString
lea rsi, Boop
call PrintString
call ExitProgram
