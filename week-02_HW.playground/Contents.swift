import UIKit

protocol Person {
    var name:String {get}
    var birthPlace:String {get}
    var age:Int {get}
    
    func walk()
    func run()
    func speak()
    
}

enum PaymentError:Error {
    case paymentLow
}

class Artist: Person {
    var name: String = ""
    var birthPlace: String = ""
    var age: Int = 0
    
    func run() {
        print("RUNNING!!")
    }
    
    func speak() {
        print("Speaking..")
    }
    
    
    func walk() {
        print("Walking...")
    }
}

extension Artist {
    func doPainting(Payment:Int) throws-> String{
        guard (Payment >= 500 ) else {
            throw PaymentError.paymentLow
        }
        return "Your Painting is Done."
    }
}

do {
    let pay = try ahmed.doPainting(Payment:501)
    print(pay)
}
catch PaymentError.paymentLow {
    print("the Payment is low!")
}
catch {
    print("An unknow error occurred: \(error)")
}
var ahmed:Artist = Artist()

ahmed.walk()

struct Doctor: Person {
    var name: String
    
    var birthPlace: String
    
    var age: Int
    
    var specialization:String
    
    func description () {
    
    print("My name is \(name), I am from \(birthPlace), My age is \(age), I am a doctor and my speciality is \(specialization) ")
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

var nora = Doctor(name: "Nora", birthPlace: "Hail", age: 32, specialization: "General doctor")

nora.run()
nora.description()
