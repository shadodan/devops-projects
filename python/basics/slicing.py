## Slices of string ##
planet1 = "The first one is Mercury"

print(planet1[1])
print(planet1[-1])
print(planet1[1:5])
print(planet1[18:])

## Slices of tuple or list ##
devops = ("Linux", "Vagrant", "Bash Scripting", "AWS", "Jenkins", "Python", "Ansible")

print(devops[0])
print(devops[2:5])
print(devops[2:5][0])
print(devops[2:5][0][5:11])

## Dictionary example ##
skills = {"DevOps": ("AWS", "Jenkins", "Python", "Ansible"), "Development": ["Java", "Node.js", ".NET"]}

print(skills)
print(skills["DevOps"])
print(skills["Development"])
print(skills["DevOps"][-1])
print(skills["DevOps"][-1][:3])