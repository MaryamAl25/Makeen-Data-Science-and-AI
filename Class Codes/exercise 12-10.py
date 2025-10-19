C = float(input("Enter the temperature in Celsius:"))
error_rate = 99.9999 
F = C * (9 / 5) + 32
C1 = ((F - 32) * (5 / 9))
if C1 == C :
    print("Conversion is perfect")
else :
    print("Conversion is not exact,it is",error_rate)
