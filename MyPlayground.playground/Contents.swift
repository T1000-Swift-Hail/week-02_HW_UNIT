import UIKit
import Darwin

protocol Person {
    var name : String { get  }
    var birthPlace : String { get  }
    var age : Int { get  }
    func walk()
     func run()
    func speak()

}
protocol Erorr{
}
enum PaymentError :Error {
    case paymentLow

}

class Artist : Person {
    var name: String
    
    var birthPlace: String
    
    var age: Int
    
    init (n:String, b:String, a:Int){
        self.age = a
        self.birthPlace = b
        self.name = n
    }
    
    func walk() {
        print("Walking ...")
    }
    
    func run() {
        print("Running ...")
    }
    
    func speak() {
        print("Speaking ...")
    }
    
    
}

extension Artist{
    
    
    func doPaintinf(payment:Int) throws -> String {
       
        guard (payment >= 500) else{
            throw PaymentError.paymentLow }
        
        return "Your Painting is Done."
      
    }
}
    
var ahmed :Artist = Artist(n: "ahmed", b: "hail", a: 34)

do {
    let result = try ahmed.doPaintinf(payment: 400)
    print(result)
}
catch PaymentError.paymentLow {
    print("The payment is low")
}

struct Doctor :Person {
    var name: String
    var specialization : String

    
    var birthPlace: String
    
    var description : String {
        return "My Name is \(name) . I am from \(birthPlace). My age is \(age). I am a doctor and my specialty is \(specialization) "
    }
    
    var age: Int
    
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
let Nora : Doctor = Doctor(name: "Nora", specialization: "Blood", birthPlace: "Hail", age: 28)
Nora.run()
print(Nora.description)






