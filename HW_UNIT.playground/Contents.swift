import UIKit

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

class  Artist :Person {
    var name: String = ""
    var birthPlace: String = ""
    var age: Int = 0
    
    init (name: String , birthPlace : String , age : Int){
        self.name = "huda"
        self.birthPlace = "hail"
        self.age = 22
    }
    
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
        
        guard payment >= 500 else{
            throw PaymentError.paymentLow
        }
        return "Your Painting is Done."
    }
    
}

do {
    let ahmad = Artist(name: "Ahmad", birthPlace: "Jedaah", age: 40)
    let AAA = try ahmad.doPainting(payment: 400)
    print(AAA)}
catch  PaymentError.paymentLow{
    print("The payment is low")
}





struct Doctor : Person {
    var name: String
    var birthPlace: String
    var age: Int
    var specialization : String
    var description : String {
        get {
            return ("My Name is \(name) . I am from \(birthPlace). My age is \(age). I am a doctor and my specialty is \(specialization) ")
        }
    }
    
    
    
    func walk() {
        print ("Walking...")
    }
    
    func run() {
        print ("Doctors don't run")
    }
    
    func speak() {
        print ("Speaking...")
    }
    
}

let Nora = Doctor (name: "Nora", birthPlace: "hail", age: 33, specialization: "Ophthalmologist")

Nora.run()
print(Nora.description)
