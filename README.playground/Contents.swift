import UIKit
import Darwin
protocol Person{

    var name :String {get}
    var birthplace: String {get}
    var age : Int {get}
    func walk()
    func run ()
    func speak()
}
enum paymentError :Error{

case paymentLow
    
}

class Artist : Person {
    
    func doPainting(payment : Int) throws -> String {
    guard payment >= 500 else { throw paymentError.paymentLow}
    return "your painting is Done"

}
    func walk() {
        print("Walking")
    }
    
    func run() {
        print("RUNNing")
    }
    
    func speak() {
        print("Speaking")
    }
    
    
    var name: String
    var birthplace: String
    var age: Int
    
    init(n:String, b: String, a :Int){
        self.name = n
        self.birthplace = b
        self.age=a
    }
}

let ArtistAhmed = Artist(n: "Ah",b: "hail",a: 30)
    
 do {
     let dopay = try ArtistAhmed.doPainting(payment: 400)
     print(dopay)
}
catch paymentError.paymentLow {
    print("The payment is low")
    
}
    struct Doctor : Person {
        func walk() {
            print("Walking")
        }
        
    var name: String,birthplace: String,age: Int
    var Specialization : String
    
            func Walk() {
         print("walking")
            }
            func run() {
                print("run")
            }
            func speak() {
                print("speak")
            
            }
        var descriptor : String {
        
        return "My Name is \(name).I am from \(birthplace). My doctor and my specialty is \(Specialization)"

        }
        
    }
let Nore = Doctor(name: "Nora",birthplace: "hail", age: 28,Specialization:"CS")
  print (Nore.descriptor)
    
    







