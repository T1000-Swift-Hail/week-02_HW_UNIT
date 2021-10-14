import UIKit
import Darwin


protocol person {

var name : String {get}
var birthPlace : String {get}
var age : Int {get}
func walk()
func run()
func speak()
}
enum PaymentError:Error {
case paymentLow
}

class Artist : person  {
    
var name : String  = ""
var birthPlace: String = ""
var age: Int = 0
func walk() {
print("Walking..")
    }
    
func run() {
print ("RUNNING!!")
    }
    
func speak() {
print ("Speaking...")

    }
}
   
extension Artist {
    func doPainting (payment : Int) throws -> String {
    guard payment >= 500 else {
        throw PaymentError.paymentLow
    }
       return "Your Painting is Done."
}
}

var ahmad = Artist()

    do {
        
        let mass = try ahmad.doPainting(payment: 600)
print(mass)
    } catch PaymentError.paymentLow {
        print("The payment is low")  }
                           
                           
struct Doctor : person {

    

    
    var name: String
    var birthPlace:String
    var age: Int
    
    var specialization:String
    var description:String {
    
    return "my name is \(name) ,I am from \( birthPlace)my age is\(age)  I am a doctor and my specialty is\(specialization )"
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
            
            




let Nora = Doctor (name:  "Nora",birthPlace:"hail", age: 44,specialization: "general practitioner" )

Nora.run()
print(Nora.description)


