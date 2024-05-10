import Foundation
// Course #1:

// #Variable
var greeting = "Hello, playground"
var number = 10
var numberType: Int = 6
var isBoolean: Bool = true
// #Swift - Constants
// Declaring constant
let constA = 42
print("Constant:", constA)
// Assigning value to a constant
//constA = 43
print("Constant:", constA)
// Displaying constant
print("Value of \(number) is more than \(numberType)!")

// #Operators
/**
    (==)   Equal
    !=     Not Equal
    >      Greater than
    <   Less than
    >=     Greater than or Equal to
    <=  Less than or Equal to
    &&    Logical AND
    ||       Logical OR
    !       Logical NOT
    -     Unary Minus     -9
    +     Unary Plus     2
*/
var isNotTrue = !isBoolean
var result = isNotTrue ? "true" : "false"
var isBiggerNumber = number >= numberType
var parseNumber = +2
var password = "XP123"
if (password == "XP123"){
   print("Welcome!! Entered password is correct")
} else {
   print("Error!!! Please enter correct Password")
}

let age = 22
let height = 185

if (age > 18) && (height > 182){
   print("You are eligible for the Police exam")
} else {
   print("You are not eligible")
}

let marks = 640
let experience = 3
if (marks > 500) || (experience > 4){
   print("You are eligible for the PO Post")
} else {
   print("You are not eligible")
}

// #Swift - Operator Overloading

/**
- is the syntax for operator overloading
static func operatorName()
{
   // body
}
*/
struct ComplexNumber {
   var real: Double
   var imag: Double
        
   // Overloading + operator to add two complex numbers
   static func+(left: ComplexNumber, right: ComplexNumber) -> ComplexNumber {
      return ComplexNumber(real: left.real + right.real, imag: left.imag + right.imag)
   }
}
let complexNumber1 = ComplexNumber(real: 2.1, imag: 2.0)
let complexNumber2 = ComplexNumber(real: 6.1, imag: 9.0)

// Calling + operator to add two complex numbers
let sumOfComplexNumbers = complexNumber1 + complexNumber2
print(sumOfComplexNumbers)
/** Closed Range Operator in Swift
 for x in 3...11{
    print(x)
 }
*/
for x in 3...11{
    print(x)
}

// Data Type
var index : Int = 10
var str   : String = "Learn Swift!"
var char  : Character = "S"
var num   : Float = 23.45
var nums  : Double = 32.233434
var value : Bool = true
/**
 User-Defined Data Types in Swift

 User-defined data types allow us to create customized data types according to their requirements. They provide more flexibility and abstraction. Following are some user-defined data types supported by Swift −
 Type Name                     Description
 Structures(struct)            They are value types; means they can have copied when passed around in the program. They are good for representing simple data structure.
 Class                              They are reference types; means they are passed as a reference. They are good for complex data models and objects.
 Enumerations(Enum)     They are used to define a group of related values. They are good at representing finite set.
 Protocols                        They define a blueprint for methods and properties that is good for a particular task or piece of functionality.
 
 */
// Structure
struct Employee {
   var name: String
   var age: Int
}

// Structure data type
var myData = Employee(name: "Seema", age: 23)
// Class
class Student {
   var name: String
   var age: Int
   init(name: String, age: Int) {
      self.name = name
      self.age = age
   }
}
// Class data type
var myInfo = Student(name: "Alice", age: 25)
// Enumeration
enum Rectangle {
   case length, width, breadth
}
// Enum data type
var side: Rectangle = .length
// varA is inferred to be of type Int
var varA = 42
print("Type of varA variable is:", type(of:varA))

// varB is inferred to be of type Double
var varB = 3.14159
print("Type of varB variable is:", type(of:varB))

// varC is also inferred to be of type String
var varC = "TutorialsPoint"
print("Type of varC variable is:", type(of:varC))
