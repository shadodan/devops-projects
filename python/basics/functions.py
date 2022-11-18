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


print(add(1, 2))
print(summ([1, 2, 3]))
greetings("Evening")
feedback(grade=7, name="José")
