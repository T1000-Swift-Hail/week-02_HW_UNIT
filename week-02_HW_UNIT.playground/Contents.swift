import UIKit

protocol Person {
 var   name : String {get set}
    
 var   birthPlace : String {get}
    
 var   age : Int {get}
    
 func   walk()
    
 func  run()
    
 func speak()
}

enum PaymentError : Error {
    case paymentLow
}


class Artist: Person {
    
    var name: String
    var birthPlace: String
    var age: Int

    init(name:String,birthPlace:String,age:Int) {
        self.name = name
        self.birthPlace = birthPlace
        self.age = age
        
    }
    
    func walk() {
        
        print("Walking...")
    }
    
    func run() {
        print("RUNNING!!")
    }
    
    func speak() {
        print( "Speaking...")
    }
   
}


extension Artist {
    func doPainting(payment : Int) throws {
        guard payment >= 500 else {
            throw PaymentError.paymentLow
        }
        
        print("Your Painting is Done")
    }
}



let ahmed = Artist(name: "ahmed", birthPlace: "Hail" , age: 30)

do {
    try ahmed.doPainting(payment: 400)
}
catch PaymentError.paymentLow {
    print ("The payment is low")

}
struct Doctor: Person {
    var name: String
    var birthPlace: String
    var age: Int
    var specialization : String
    
    var description : String {
        return ("My Name is \(name) . I am from \(birthPlace). My age is \(age). I am a doctor and my specialty is \(specialization ) ")
    
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
let Nora = Doctor(name: "Nora", birthPlace: "Hail" , age: 30,specialization: "Neurologists")

Nora.run()
print(Nora.description)
