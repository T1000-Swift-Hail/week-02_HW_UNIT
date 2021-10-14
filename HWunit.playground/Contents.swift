import UIKit
import Foundation

protocol Person {
    
    var name : String {get }
    var birthPlace : String {get}
    var age :Int {get}
    func walk()
    func run()
    func speak()
    
}

enum PaymentError:Error {
    
    case paymentLow
    
}

class Artist:Person {
    func walk() {
        print("Walking")
    }
    
    func run() {
        print("RUNNING")
    }
    
    func speak() {
        print("Speaking")
    }
    
        

    var name : String = ""
    var birthPlace : String = ""
    var age :Int = 1
    
    init(name:String) {
        self.name=name
        
    }
}

extension Artist {
    
    func doPainting(payment: Int) throws -> String {
        
        let minimum = 500
        
        guard payment >= minimum else {
            
            throw PaymentError.paymentLow
        }
        return "your painting it's done"
    }
    
}

do {
    
    let ahmed = Artist(name:"")
    let payment = try ahmed.doPainting(payment: 700)
    print(payment)
    
    
} catch PaymentError.paymentLow {
    
    print("The payment is low")
}

struct Doctor:Person {
    var name: String
    
    var birthPlace: String
    var age: Int
    var specialization:String
    func walk() {
        print("walking..")
    }
    
    func run() {
        print("Doctors don't run")
    }
    
    func speak() {
        print("Speaking...")
    }
    
    
    var  description : String {
        
        return "My Name is < \(name) > . I am from < \(birthPlace) >. My age is < \(age) >. I am a doctor and my specialization is < \(specialization) > "
    }
    
}
var doctor = Doctor(name: "ahmed", birthPlace: "Hail", age: 40, specialization: "Tooth")

var desc = doctor.description
print(desc)
//


var Nora = Doctor(name: "Nora", birthPlace: "Hail", age: 33, specialization: "Tooth")

print(Nora.description)
