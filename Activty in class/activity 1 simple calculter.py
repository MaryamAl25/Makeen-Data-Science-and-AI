#Calculator using if
while True:
    operator = input("Enter an Operator (+ - * /):")
    if operator.lower() == "exit":
        print("Exiting calculator...")
        
        break
    #operator = input("Enter an Operator (+ - * /):")
    x = int(input("Enter The First Number: "))
    y = int(input("Enter The Second Number: "))

    if operator == "+":
        result = x + y
        print(result)
    elif operator == "-":
        result = x - y
        print(result)
    elif operator == "*":
        result = x * y
        print(result)
    elif operator == "/":
        result = x / y
        print(result)
    else:
        print (f" {operator} is not a valid operator") #f-string to write message
