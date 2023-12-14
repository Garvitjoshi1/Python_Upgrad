from turtle import *
import turtle as t

def my_turtle():
    sides = str(3)
    loops = str(450)
    pen = 0.25
    #Loops
    for i in range(int(loops)):
        forward(i*2/int(sides) +i)
        left(135/int(sides)+ .350)
        hideturtle()
        pensize(pen)
        speed(200)
        left(150)


my_turtle()
t.done()
