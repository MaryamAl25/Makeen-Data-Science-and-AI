import time
time_num1 = input("Enter the Time 1 (HH:MM, 24-hour): ")
time_num2 = input("Enter the Time 2 (HH:MM, 24-hour): ")

time_num1 = time.strptime(time_num1, "%H:%M")
time_num2 = time.strptime(time_num2, "%H:%M")

if time_num1 > time_num2:
    print("Time 1 comes after time 2")
elif time_num1 < time_num2:
    print("Time 1 comes before time 2")
else :
    print(" The two times are the same")