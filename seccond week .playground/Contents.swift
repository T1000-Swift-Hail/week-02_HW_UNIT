import UIKit

protocol Person {
    var name: String {get}
    var birthPlace: String {get}
        var age: Int {get}
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
    init(name: String,birthPlace: String, age: Int ) {
        self.name = name
        self.birthPlace = birthPlace
        self.age = age
    }
    
    func walk() {
        print("Walking")
    }
    
    func run() {
        print("Running!")
    }
    
    func speak() {
        "Speking"
    }
    
    
}
extension Artist {
    func doPainting(payment : Int) throws -> String {
    
        guard (payment > 500) else {
          throw PaymentError.paymentLow
        
        }
        return "Your Painting is Done"
        
}
}
var ahmed = Artist(name: "Ahmed", birthPlace: "Rafha", age: 30)
do {
    let payment = try  ahmed.doPainting(payment: 400)
    print(payment)
}
catch PaymentError.paymentLow {
    print("The payment is low")
}

catch  {
    print("An unknown error occurred: \(error)")
}

struct Doctor: Person {
    var name: String
    
    var birthPlace: String
    
    var age: Int
    var specialization: String
    func description() {
        print("my name is \(name), i am from \(birthPlace), my age is \(age), I am a doctor and my specialty is \(specialization)")
    }
    
    func walk() {
        print("Walking")
    }
    
    func run() {
        print("Doctors don't run")
    }
    
    func speak() {
        print("Speaking")
    }
    
    
}

var nora = Doctor(name: "Nora", birthPlace: "Khobar", age: 39, specialization: "Dentist")
nora.run()
nora.description()

