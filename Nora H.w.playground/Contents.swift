import UIKit

protocol Person {
var name: String {get}
var birthPlace: String {get}
var age: Int {get}

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
    
    init (n:String, b:String, a:Int){
        self.name = n
        self.birthPlace = b
        self.age = a
    }
    func walk() {
        
    }
    func run() {
        
    }
    func speak(){
        
    }
    
}

extension Artist{
    func doPainting(payment : Int) throws {
        guard payment >= 500 else{
            throw PaymentError.paymentLow
        }
        print("Your Painting is Done")
    }
}

var artist1 = Artist(n: "ahmed", b: "Hail", a: 34)
do {
    try artist1.doPainting(payment: 20000)
}

catch PaymentError.paymentLow {
   print("The payment is low")
}

struct Doctor: Person{
    var name: String
    var birthPlace: String
    var age: Int
    var specialization : String

    var description: String{
        return "My Name is \(name), I am from \(birthPlace), my age is \(age), I am a doctor and my specialty is \(specialization)."
    }
    func walk(){
    }
    func run(){
    }
    func speak(){
    }

}
let noraDoctor = Doctor(name: "Nora", birthPlace: "Dammam", age: 33, specialization: "bones")
noraDoctor.run()
print(noraDoctor.description)
