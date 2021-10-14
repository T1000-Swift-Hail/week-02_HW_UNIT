import UIKit

protocol person {
    var  name : String { get }
    var  birthPlace : String { get  }
    var  age : Int { get}
    func walk()
    func run ()
    func speak()
    }

enum PaymentError :Error {
    case paymentLow
    
}
class Artist :person {
 
    var name: String
    var birthPlace: String
    var age: Int
    
    init (name: String? ,birthPlace: String? , age: Int) {
        self.name = (name)!
        self.birthPlace = (birthPlace)!
        self.age = age }

    func walk() {
    
     print("Walking...")
    }
    func run (){
        print("RUNNING!!")
}
    func speak() {
        print ("Speaking...")
    }}

   extension Artist {
    func doPainting(payment : Int) throws -> String {
            guard payment >= 500 else {
                throw PaymentError.paymentLow }
        return("Your Painting is Done.")}
            
    }
let Ahmad = Artist(name: "Ahmad", birthPlace: "Jeddah", age: 23)
do{
    let result = try Ahmad.doPainting(payment: 500)
    print(result)
    }
    catch PaymentError.paymentLow{
    print ("The payment is low")
}

struct Doctor : person {

    var name: String
    var birthPlace: String
    var age: Int
        
    var specilization : String
    var description : String {
        
        return " My Name is \(name) . I am from . My age is \(age) . I am a doctor and my specialty is \(specilization)"
        }
    
    func walk() {
    
     print("Walking...")
    }
    func run (){
        print("Doctors don't run")
}
    func speak() {
        print ("Speaking...")
    }
    
    }

let Nora = Doctor(name: "Nora", birthPlace: "Riyadh", age: 27, specilization: "pedtriation")

Nora.run()
print(Nora.description)




