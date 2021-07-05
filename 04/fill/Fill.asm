// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.


// Put your code here.

@i
M[i] = 0

(LOOP)

// 是否按键了
D = M[24576]

// 没有按键
@CLEAR 
D; JEQ

// 判断屏幕是否写满了 8K - 1
@8191
D = A - D
@LOOP
D; JEQ

// 写屏幕
D = M[i]
@SCREEN 
A = A + D
M = -1
D = D + 1
M[i] = D

@LOOP
0; JMP



// 清除屏幕
(CLEAR)
// 屏幕是否清空
D = M[i]
@LOOP
D; JLT
// 清除屏幕
@SCREEN
A = A + D
M = 0
D = D - 1
M[i] = D

@LOOP
0; JMP