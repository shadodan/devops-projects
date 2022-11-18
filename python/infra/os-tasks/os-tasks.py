import os

## Adding user list ##
user_list = ["alpha", "beta", "gamma"]

print("Adding users to system")

for user in user_list:
    exit_code = os.system(f"id {user}")

    if exit_code != 0:
        print(f"User {user} does not exist adding it")
        os.system(f"useradd {user}")
    else:
        print("User already exists")

## Verifying if group exists ##
exit_code = os.system("grep science /etc/group")
if exit_code != 0:
    print("Group science does not exist adding it")
    os.system("groupadd science")
else:
    print("Group already exists")

## Adding users to group ##
for user in user_list:
    print(f"Adding user {user} in the science group")
    os.system(f"usermod -a -G science {user}")

## Creating directory ##
print("Adding directory")

if os.path.exists("/opt/science-dir"):
    print("Directory already exists")
else:
    os.mkdir("/opt/science-dir")

## Assigning permissions ##
print("Assigning permissions to group science")

os.system("chown :science /opt/science-dir")

os.system("chmod 770 /opt/science-dir")
