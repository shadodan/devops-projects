## Prints all methods of the given type ##
"""
print(dir(""))
print(dir([]))
print(dir(()))
print(dir({}))
"""

message = "this message is used for testing the string methods"
print(message)
print(message.capitalize())
print(message.lower())
print(message.islower())
print(message.isupper())
print(message.find("for"))
print(message[message.find("for"):message.find("for") + 3])

seq = ("192", "168", "40", "90")
print(".".join(seq))

mountains = ["Everest", "Himalaya", "Alps", "Pico da Neblina"]
mountains.append("Oregon mount")
mountains.extend(["Mt Reiner", "Satpuda"])
mountains.insert(2, "Mt Abu")
mountains.pop()
mountains.pop(1)

dictionary = { "Name": "Santa", "Skill": "Blockchain", "Code": 1024 }
print(dictionary.keys())
print(dictionary.values())
dictionary.clear()