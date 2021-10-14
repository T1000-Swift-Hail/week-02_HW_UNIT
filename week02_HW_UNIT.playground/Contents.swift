import UIKit

protocol Person {
    var name : String { get }
    var birthPlace : String { get }
    var age : Int { get }
    
    func walk()
    func run()
    func speak()
}

enum PaymentError : Error {
    case paymentLow
}

class Artist : Person {
    var name: String
    var birthPlace: String
    var age: Int
    
    init( _ name : String, _ birthPlace:String, _ age: Int){
        self.name = name
        self.birthPlace = birthPlace
        self.age = age
    }
    func walk() {
        print("Walking...")
    }
    func run() {
        print("Runing!!")

    }
    func speak() {
        print("Speaking...")
    }
}

extension Artist {
    
    func doPainting(payment : Int) throws -> String{
        guard payment >= 500 else {
            
                throw PaymentError.paymentLow
            }
            return "Your Painting is Done."
        }
    }
    
let Ahmed = Artist("Ahmed", "Hail", 32)
do {
    let result = try Ahmed.doPainting(payment:500)
    print(result)
} catch PaymentError.paymentLow {
    print("The payment is low")
}

struct Doctor : Person {
    var name: String
    var birthPlace: String
    var age: Int
    var  specialization : String
    
    var description : String {
        return "\nMy Name is \(name) . I am from \(birthPlace). My age is \(age). I am a doctor and my specialty is \(specialization) "
    }
    
    func walk() {
        print("Walking...")
    }
    func run() {
        print("Doctors don't run")
    }
    func speak() {
        print("Speaking...") }
}

let Nora = Doctor(name: "Nora", birthPlace: "Hail", age: 31, specialization: "surgery")
print(Nora.description)
