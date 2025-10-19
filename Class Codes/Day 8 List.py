#list
#sorting:
values = [1,16,9,4] 
values.sort() #arrange the values [1, 4 , 9, 16]
print(values)

#reverse
values = [1,16,9,4] 
values.sort(reverse=True) #arrange the values from the largest to smallest
print(values)

#Copying Lists
lis = [1,2,3,4]
newLis = lis #if any change happened in lis it will also change in newLis(same container)
lis.append(5)
print(newLis)

#Coping in different container
lis2 = [6,7,8,9]
newlis2 = list(lis2) #coping but saving in different memory
lis2.append(10) #adding only in lis2 and save in there container
newlis2.append(11) #adding only in newlis2 and save in there container
print(lis2) #[6, 7, 8, 9, 10]
print(newlis2) #[6, 7, 8, 9, 11]

#Slices of a List
x = [21,22,23,24,25,26]
lis_x = x[2:] #slice based on the index,[2:]all after index 2 will include
lis_y = x[0:3] #slice from index 0 to index 2, index 3 not included
print(lis_x) #[23, 24, 25, 26]
print(lis_y) #[21, 22, 23]

#loop whith list--input is -340k check if isdigit
lis =[]
while True :
    inputStr = input("Enter number or Q to stop: ")
    
    if inputStr.isdigit(): 
        lis.append(int(inputStr))
    elif inputStr[0] == '-' and inputStr[1: ].isdigit(): #check if input -12k isdigit(its string)
        lis.append(int(inputStr[1: ]) * -1)
    elif inputStr == 'Q':
        break
    else:
        lis.append(inputStr)
print(lis)

