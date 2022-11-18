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


time_activity(10, 20, 20, hobby="Guitar", sport="Taekwondo", fun="Netflix", work="DevOps")