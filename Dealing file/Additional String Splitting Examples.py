string = "a,bc,d"
print(string.split(",")) #split each coma

string = "a b  c"
print(string.split())

string = "a b  c"
print(string.split(" ")) #split the blank space

string = "a:bc:d"
print(string.split(":",1)) #split 2 parts from start 

string = "a:bc:d"
print(string.rsplit(":",1)) #rsplit from right