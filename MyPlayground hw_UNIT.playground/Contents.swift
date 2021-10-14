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
    
 
    
    var age: Int
    
    func wlk() {
        
    }
    
    func run() {
        
    }
    
    func speak() {
        
    }
    
    





//
//name : String
//birthPlace : String
//age : Int
//func walk()
//func run()
//func speak()
//Create an enum PaymentError .
//
//case paymentLow
//Create a class Artist that conforms to protocol Person
//
//Conform to the protocol Person properties and methods
//Use an init for the class (Note: Don't give default values for the properties)
//method walk() , print "Walking..."
//method run(), print "RUNNING!!"
//method speak(), print "Speaking..."
//Create an extension to class Artist . Add the following method:
//
//func doPainting(payment : Int)
//the method doPainting(payment : Int) accepts a pyament of 500 or more . Using a guard , throw an error of type PaymentError.paymentLow if the payment is less than 500 .
//If No errors thrown , the method doPainting(payment : Int) prints "Your Painting is Done."
//Create an Artist ahmed .
//
//using do, catch . Call the the method ahmed.doPainting(payment: 400). If an error, print "The payment is low"
//Create a struct Doctor that conforms to protocol Person
//
//Conform to the protocol Person properties and methods
//Add a new property specialization : String
//Add a new computed property description : String that returns the following : "My Name is < name > . I am from < birthPlace >. My age is < age >. I am a doctor and my specialty is < specialization > "
//method walk() , print "Walking..."
//method run(), print "Doctors don't run"
//method speak(), print "Speaking..."
//Create a Doctor Nora .
//
//call Nora.run()
//print Nora.description
