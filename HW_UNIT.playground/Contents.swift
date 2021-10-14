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
struct Artist : Person {
    var name: String
    
    var birthPlace: String
    
    var age: Int
    
    func walk() {
        print("Walking...")
    }
    func run() {
        print("RUNNING!!")
    }
    
    func speak() {
        print("Speaking...")
    }
    }
extension Artist {
     func doPainting (payment : Int) throws -> String {
       
        guard payment >= 500 else { throw PaymentError.paymentLow }
        
        return "Your Painting is Done."
    }
}

var ahmed = Artist(name: "shmed", birthPlace: "hail", age: 45)
        
    do {
    let payment = try ahmed.doPainting(payment: 400 )
    print(payment)
    } catch PaymentError.paymentLow {
        print("Error")
    }
struct Doctor : Person {
    var name: String
    
    var birthPlace: String
    
    var age: Int
    
    var specialization : String
    
    var description : String {
    return "my name is \(name) and I am from \(birthPlace) and My age\(age)  and I am a doctor and my specialty is\(specialization) "
    }
    
    func walk() {
        print("Walking...")
    }
    
    func run() {
        print("Doctors don't run")
    }
    
    func speak() {
        print("Speaking...")
    }
}

let Nora = Doctor(name: "nora", birthPlace: "Hail", age: 45, specialization: "heart")

print(Nora.description)














