import UIKit
import Foundation

protocol Person {
    var name : String {get}
    var birthPlace : String {get}
    var age : Int {get}
func walk()
func run()
func speak()
}
enum PaymentError : Error {
case paymentLow
}
class Artist : Person {
    var name : String
    var birthPlace : String
    var age : Int
    init( name:String,birthPlace:String , age:Int){
        self.name = name
        self.birthPlace = birthPlace
        self.age = age
    }
    func walk() -> () {print("Walking...")}
    func run()-> () {print("RUNNING!!")}
    func speak() ->() {print( "Speaking...")}
}
extension Artist {
    func doPainting(payment : Int) throws {
        let min = 500
        guard payment >= min else{
            throw PaymentError.paymentLow
            
        }
    print("Your Painting is Done.")
    }
}
let Ahmad = Artist(name: "ahmed", birthPlace: "hail", age: 40)
do{
    try Ahmad.doPainting(payment: 400)
}
catch PaymentError.paymentLow{
    print("The payment is low")
}
struct Doctoe : Person {
    var name: String
    var birthPlace: String
    var age: Int
    func walk() {}
    func run() {
        print("Doctors don't run")
    }
    func speak() {}
    var specialization : String
    var description : String {
        return  "My Name is \(name) \n I am from \(birthPlace) \n My age is \(age) \n I am a doctor and my specialty is \(specialization)  "
    }
}
let Nora = Doctoe(name: "Nora", birthPlace: "Gadah", age: 35, specialization: "Hart")
Nora.run()
print(Nora.description)
