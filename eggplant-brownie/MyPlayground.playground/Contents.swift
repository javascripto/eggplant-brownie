import UIKit


func drawLine() {
    print(String(repeating: "-", count: 50))
}

func sayHi(name: String = "John") {
    print("Hi, \(name)")
}

func sayHiWithoutNamedParameters(_ name: String = "John") {
    sayHi(name: name)
}

sayHi()
sayHi(name: "Mary")
sayHiWithoutNamedParameters("Ann")

drawLine()

let names = ["John", "Mary", "Joseph", "Ralph"]

for i in 0...names.count - 1 {
    print(names[i])
}

drawLine()

for name in names {
    print(name)
}


drawLine()

func calculateAverage(numbers: Array<Double>) -> Double {
    let sum = numbers.reduce(0, { a, b in a + b })
    return sum / Double(numbers.count)
}



class Person {
    var name: String

    init(name: String) {
        self.name = name
    }
}

let person = Person(name: "Fulano")
print(person.name)


func varags(_ args: String...) {
    for arg in args {
        print(arg)
    }
}

varags("Olá", "Mundo")


drawLine()


var name: String?

name = "John"

//print(name) // Optional("John")

if name != nil {
    print(name!) // John
}

func ifLetAndGuardLet() {
    if let nameNotNil = name {
        print(nameNotNil)
    }
    // print(nameNotNil) // nameNotNil não disponível fora do escopo do if
    guard let nameNotNil = name else {
        return
    }
    print(nameNotNil) // disponível fora do escopo do guard let
}

ifLetAndGuardLet()

drawLine()

let number = Int("1") // Optional(1)

if let n = number {
    print(n) // 1
}

