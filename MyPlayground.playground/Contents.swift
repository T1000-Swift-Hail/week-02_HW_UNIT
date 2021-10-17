import UIKit

protocol Person {
    var name : String { get }
    var birthPlace : String { get }
    var age : Int { get }
    
    func walk()
    func run()
    func speak()
}
    
enum PaymentError: Error {
    case paymentLow
}

class Artist: Person {
    var name: String
    var age : Int
    var birthPlace: String
    
    init(name: String, age: Int, birthPlace: String){
        self.name = name
        self.age = age
        self.birthPlace = birthPlace
    }
    
    func walk() {
        print("walking")
    }
    
    func run() {
        print("RUNNING")
    }
    
    func speak() {
        print("speaking")
    }
}
     
extension Artist {
    func doPainting(payment : Int) throws -> String {
        guard payment >= 500 else { throw PaymentError.paymentLow }
        return "Your Paintion is Done"
    }
}
do {
    let artist = Artist(name: "ahmed", age: 30, birthPlace: "hail")
    let result = try artist.doPainting(payment: 400)
    print(result)
    
} catch PaymentError.paymentLow {
    print("The payment is low")
    
}

struct Doctor {
    var name: String
    var age : Int
    var birthPlace: String
    var specialization : String

    func walk() {
        print("walking")
    }
    
    func run() {
        print("RUNNING")
    }
    
    func speak() {
        print("speaking")
    }
   
}
    var person = Doctor(name: "Ali", age: 40, birthPlace: "Abha", specialization: "Derma")
person.name
person.age
person.birthPlace
person.specialization

print("My Name is\(name) . I am from\(birthPlace). My age is\(age). I am a doctor and my specialty is\(specialization).")

