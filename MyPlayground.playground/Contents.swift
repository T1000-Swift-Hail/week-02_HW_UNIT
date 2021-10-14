import UIKit

protocol Person{
    
    var name : String {get}
    var birthPlace : String {get}
    var age : Int {get}
    func walk()
    func run()
    func speak()
    
}
enum Payment:Error{
    case paymentLow
}


class Artist: Person {
   
    var name: String
    
    var birthPlace: String
    
    var age: Int

    init(name:String,birthPlace: String,age: Int){
        self.name = name
        self.birthPlace=birthPlace
        self.age = age
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
    
    func doPainting(payment : Int)throws -> String{
    let minimum = 500
     
        guard payment>=minimum else {
            
            throw Payment.paymentLow
            
        }
        return "Your Painting is Done."

    }
}
do{
    let ahmed = Artist(name: "ahmed", birthPlace: "paris", age: 25)
    let payment = try ahmed.doPainting(payment:400)
print(payment)
}catch Payment.paymentLow{
    print("The payment is low")
}
struct Doctor:Person {
    var name: String
    
    var birthPlace: String
    
    var age: Int
    var specialization : String
    var description: String{
        
        return "My Name is \(name). I am from \(birthPlace). My age is \(age). I am a doctor and my specialty is \(specialization)"}
        
    func walk() {
        print( "Walking...")
    }
    
    func run() {
        print("Doctors don't run")
    }
    
    func speak() {
        print("Speaking...")
    }
    
        
   }

  var nora = Doctor(name: "nora", birthPlace: "hail", age: 40, specialization: "doctor")
    nora.run()
    print(nora.description)
    





    
    
    
    
    
    
    
    
    
    
    
    
    
