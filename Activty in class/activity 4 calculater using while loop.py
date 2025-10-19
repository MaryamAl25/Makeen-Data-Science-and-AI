while True:
    operator = input("Enter an Operator (+ - * /) or Q to Exit: ").upper()
    
    if operator == "Q":
        print("Exiting the calculator.")
        continue
    
    if operator in ("+", "-", "*", "/"):
        try:
            x = int(input("Enter The First Number: "))
            y = int(input("Enter The Second Number: "))
            
            if operator == "+":
                result = x + y
            elif operator == "-":
                result = x - y
            elif operator == "*":
                result = x * y
            elif operator == "/":
                if y == 0:
                    print("Error: Division by zero.")
                    continue
                result = x / y
            
            print(f"Result: {result}")
        except ValueError:
            print("Please enter valid integers.")
    else:
        print(f"'{operator}' is not a valid operator.")