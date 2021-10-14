import UIKit

protocol Person {
    var name : String { get }
    var birthPlace : String {get}
    var age : Int { get }
    func walk()
    func run()
    func speak()
}

enum PaymentError : Error {
    case paymentLow
}

class Artist: Person {
    
    var name : String
    var birthPlace : String
    var age : Int
    init(name : String,birthPlace : String,age : Int){
        self.name = name
        self.birthPlace = birthPlace
        self.age = age
    }
    func walk() -> () {print("Walking...") }
    func run() -> () { print("RUNNING!!") }
    func speak() -> () { print("Speaking...") }
    
}
extension Artist {
    func doPainting (payment : Int) throws {
        guard payment >= 500 else {
            throw PaymentError.paymentLow
        }
        print("Your Painting is Done.")
    }
}

let artist1 = Artist(name: "Ahmed", birthPlace: "Hail", age: 29)
do {
    try artist1.doPainting ( payment: 600)
}
catch PaymentError.paymentLow {
    print( "The payment is low  ")
}
struct Doctor : Person {
    var name: String
    var birthPlace: String
    var age: Int
    func walk() {}
    func run() {
        print("Doctors don't run")
    }
    func speak() {}
        var specialization: String
    var description: String {
        return "My Name is \(name), I am from \(birthPlace), My age is \(age), I am a doctor and my specialty is \(specialization)"
    }
}
let Nora = Doctor(name: "Dr.Nora", birthPlace: "Hail", age: 43, specialization: "Emergency")
Nora.run()
print(Nora.description)





