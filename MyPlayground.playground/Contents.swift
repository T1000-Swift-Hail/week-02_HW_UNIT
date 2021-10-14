import UIKit

protocol person{
    var name : String { get }
    var birthPlace : String { get  }
    var age : Int { get  }
    func walk()
    func run()
    func speak()
}
enum payment:Error{
    case paymentLow
}

class Artist:person{
    var name: String

    var birthPlace: String

    var age: Int
   
    
    init(name:String, birthPlace:String, age:Int){
        self.name = name
        self.birthPlace = birthPlace
        self.age = age
    }
    
func walk() {
   print("WALKING")
    
}

func run() {
    print("RUNING")
}

func speak() {
    print("SPEAKING")
}
    
}
extension Artist{
    func doPainting(paymentthrough : Int) throws -> String{
    let min = 500
    
    
    guard paymentthrough >= min else {
        throw payment.paymentLow
}
return "Your Painting is Done"
}

}


var ahmed = Artist(name: "ahmed", birthPlace: "Hail", age: 28)


do {
    let order = try ahmed.doPainting(paymentthrough:580)
    print(order)
} catch payment.paymentLow {
    print("Your pyment low")
}
struct Doctor : person {
    var name: String
    
    var birthPlace: String
    
    var age: Int
    
    var specialization: String
    var description: String {
         
        return "My Name is \(name) . I am from \(birthPlace). My age is \(age). I am a doctor and my specialty is \(specialization)"
    }
    
    func walk() {
        print("Walking")
    }
    
    func run() {
        print("Doctors don't run")
    }
    
    func speak() {
        print("Speaking")
    }
}
var Nora = Doctor.init(name: "Nora", birthPlace: "Ryiadh", age: 35, specialization: "family medicine")
Nora.run()
print(Nora.description)




