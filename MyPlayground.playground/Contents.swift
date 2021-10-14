import UIKit
import Darwin

protocol Person {
    
    var name : String {get}
    var birthPlace : String {get}
    var age : Int {get}
    func walk()
     func run()
     func speak()
    
}
enum PaymentError : Error{
    
    case paymentLow
}

class Artist : Person {
    
    var name: String, birthPlace: String ,age: Int
  
    func walk() {
        print("Walking")
    }
    
    func run() {
        print ("RUNNING!!")
    }
    
    func speak() {
        print("Speaking...")
    }
    
    init(name: String, birthPlace: String ,age: Int){
    self.name = name
    self.birthPlace = birthPlace
    self.age = age
    }
    
}

  extension Artist {
    
    func doPainting(payment : Int) throws -> String {
    
        guard payment >= 500 else {
            throw PaymentError.paymentLow
        }
            return  "Your Painting is Done."
    }
}

    let ahmed = Artist(name: "ahmed", birthPlace: "Hail", age: 30)
    
    do {
        let dopay = try ahmed.doPainting(payment : 400)
        print("The payment is accepted ")
    }
    catch PaymentError.paymentLow {
        print("The payment is low")
    }
    
struct Doctor : Person{
    var name: String ,birthPlace: String , age: Int
    var specialization : String
    
    func walk() {
        print ("Walking...")
    }
    
    func run() {
        print ("Doctors don't run")
    }
    
    func speak() {
        print ("Speaking...")
    }
    var description : String {
    return ("My Name is \(name) . I am from \(birthPlace). My age is \(age). I am a doctor and my specialty is \(specialization) ")
    }
    
}


let doctorNora = Doctor(name: "nora", birthPlace: "Hail", age: 25, specialization: "EyesDoctor")
 
print(doctorNora.description)
