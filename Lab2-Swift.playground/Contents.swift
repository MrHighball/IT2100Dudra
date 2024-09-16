import UIKit

/* 1 */
var value1: Double = 43.88
var value2: Double = 108.99
var value3: Double = 14.22
let sum = value1 + value2 + value3
print("The sum of the values is \(sum)")

/* 2 */
var isNegative: Bool = false
    if isNegative {
        print("It is less than 0")
    } else {
        print("It is not a negative")
    }
/* 3 */
let languages = ["Swift", "Objective-C", "HTML", "CSS", "JavaScript"]
   for language in languages {
       print(language)
   }
/* 4 */
/*
      An optional in Swift is a variable that can either hold a value or be nil.
      It is used to represent the possibility that a variable may not have a value.
   */
/* 5 */
/*
      An optional in Swift is a variable that can either hold a value or be nil.
      It is used to represent the possibility that a variable may not have a value.
   */
/* 6 */
/*
       Forcibly unwrapping optionals using `!` can lead to runtime crashes if the optional
       does not contain a value (i.e., if it is nil). The following code uses optional
       binding (`if let`) to safely unwrap the optionals, ensuring that the code only
       executes if all optionals contain values.
    */
var reading1: Double? = 15.5
   var reading2: Double? = 20.3
   var reading3: Double? = 18.2

   if let r1 = reading1, let r2 = reading2, let r3 = reading3 {
       let avgReading = (r1 + r2 + r3) / 3
       print("Average reading: \(avgReading)")
   } else {
       let errorString = "Instrument reported a reading that was nil."
       print(errorString)
   }

/* 7 */
for number in 1...5 {
      print(number)
  }

/* 8 */
let numbers = [5, 6, 7, 8, 9, 10]
    for (index, number) in numbers.enumerated() {
        print("Index \(index): Number \(number)")
    }

/* 9 */
let myName = "John"
    let mastering = "is mastering"
    let language = "the Swift Programming language"
    print("\(myName) \(mastering) \(language)")

    // Using the currency values from problem 1
    print("The total is \(sum)")

/* 10 */
    func multiply(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
    let product = multiply(6, 7)
    print("Product of 6 and 7 is: \(product)")

/* 11 */
    class Dog {
        var breed: String
        var name: String
        
        init(breed: String, name: String) {
            self.breed = breed
            self.name = name
        }
        
        func bark() {
            print("\(name) is barking")
        }
        
        func display() {
            print("Dog name: \(name), breed: \(breed)")
        }
    }

    // Create an object of type Dog and call its methods.
    let myDog = Dog(breed: "Labrador", name: "Buddy")
    myDog.bark()
    myDog.display()


