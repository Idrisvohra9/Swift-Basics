// Converting int to string
var i:Int = 20
print("Before conversion")
print("The value of i = ", i)
print("The type of i = ", type(of: i))

print("Converting Int to String")
var converted:Any = String(i)
print("The value of i = ", converted)
print("The type of i = ", type(of: converted))
print()


// Converting String to int:
var s:String = "10"
converted = Int(s) ?? 20
print("Before conversion")
print("The value of s = ", s)
print("The type of s = ", type(of: s))

// We have to put optional chaining here because the variable inside the converter can be of type 'Any' and that might catch some exceptions
print("Converting String to Int")
print("The value of s = ",converted)
print("The type of s = ",type(of: converted))

print()
