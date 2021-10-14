import UIKit

protocol Person {
    var name: String { get }
    var birthPlace: String { get }
    var age: Int { get }
    func walk()
    func run()
    func speak()
}
enum PaymentError: Error {
    case paymentLow
}

class Artist: Person {
    var name: String
    var birthPlace: String
    var age: Int
    init (name: String, birthPlace: String, age: Int){
        self.name = name
        self.birthPlace = birthPlace
        self.age = age
    }

    func walk(){
        print("Walking...")
    }
    func run(){
        print("RUNNING!!")
    }
    func speak(){
        print("Speaking...")
    }
}

extension Artist {
    func doPainting(payment: Int) throws -> String {
        guard payment >= 500 else { throw PaymentError.paymentLow }
        return "Your Painting is Done."
    }
}

var ahmed = Artist(name:"Ahmed", birthPlace:"Hail", age: 24)
do {
    let  result = try ahmed.doPainting(payment: 400)
    print(result)
}
catch PaymentError.paymentLow {
    print("The payment is low")
}

struct Doctor: Person {
    var name: String
    var birthPlace: String
    var age: Int
    var specialization: String
    func walk() {
        print("Walking...")
    }
    func run() {
        print("Doctors don't run")
    }
    func speak() {
        print("Speaking...")
    }
    var description:String {
        return "My Name is \(name). I am from  \(birthPlace). My age is \(age). I am a doctor and my specialty is \(specialization)"
}
}


var Nora = Doctor(name:"Nora", birthPlace:"Riyadh", age: 24, specialization:"Pharmacist")

Nora.run()
print(Nora.description)
