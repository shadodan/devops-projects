import random

## Simple Function ##
def add(num1, num2):
    return num1 + num2


## Simple Function ##
def summ(arg):
    x = 0

    for i in arg:
        x += i

    return x


## Default argument ##
def greetings(msg="Morning"):
    print(f"Good {msg}")


## Keyword arguments ##
def feedback(name, grade):
    print(f"The student {name} is having {grade} points")
    if grade > 5 and grade < 7:
        print("Needs to study more, but passed")
    elif grade >= 7 and grade <= 10:
        print("Congratulations, excellent grade")
    else:
        print("Sorry, the student is in a bad situation")

## Variable length arguments *args (non keyword arguments)
def order_food(min_order, *args):
    print(f"You have ordered {min_order}")

    for item in args:
        print(f"You have ordered {item}")

    print("Your food will be delivered in 30 min")
    print("Have a nive dinning")


order_food("Pizza")
order_food("Pizza", "Salad", "Soda")

## Variable length arguments **kwargs (keyword arguments)
import random

def time_activity(*args, **kwargs):
    """
    Input: Multiple values for minutes, key=pair for activity
    Output: Return the sum of minutes + random number for a random activity
    """
    minutes = sum(args) + random.randint(0, 60)
    choice = random.choice(list(kwargs.keys()))
    print(f"You have to spend {minutes} minutes for {kwargs[choice]}")
