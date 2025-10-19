# List : insert
newlist = ["Ali",2,"noor"]
newlist.insert(2,"4")
print(newlist)

#List :find index
friends = ["Maryam","Asma","Noor","fatma"]
if "fatam" in friends:
    n = friends.index("fatma")
    print(n)
print(friends)

# remove the last one
friends = ["Maryam","Asma","Noor","fatma"]
if "fatam" in friends:
    n = friends.index("fatma")
    print(n)
friends.pop()
print(friends)

#remove asma
friends = ["Maryam","Asma","Noor","fatma"]
if "fatam" in friends:
    n = friends.index("fatma")
    print(n)
friends.pop(1)
print(friends)
# add two lists concatination
old_friends = ["Maryam","Asma","Noor","fatma"]
new_friends = ["Marwa","Sahab","Malak","Muna"]
all_friends = old_friends + new_friends
print(all_friends)

#replicat
lis = [1,2,3]
newlis = lis * 6
print(newlis)
