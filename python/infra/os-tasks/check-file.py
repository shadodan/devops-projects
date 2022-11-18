import os

path = "/tmp/testfile-txt"

if os.path.isdir(path):
    print("It is a directory")
elif os.path.isfile(path):
    print("It is a file")
else:
    print("File or directory not found")
