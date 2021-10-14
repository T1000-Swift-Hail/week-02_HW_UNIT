import UIKit

protocol person{
    var name :String {get}
    var birthplace :String {get}
    var age :Int {get}
func walk()
    func run()
        func speak()
}
enum paymentError :Error{
    case paymentLow
}

class Artist :person {
    
    var name:String
   var birthplace: String
   var age: Int
    
    
    init(n:String, b: String, a : Int){
        self.name = n
        self.birthplace = b
        self.age=a
    }
    
    func walk() {
        print("walking")
    }
    
    func run (){
    print("run")
}
    func speak() {
        print("speak")
    }
    
    
}

extension Artist {
    
    func dopainting (payment:Int) throws  {
        guard payment >= 500 else {
            throw paymentError.paymentLow
        }
        
        print("Your Painting is Done")
    }
    
    
}


var ArtistAhmed = Artist(n: "Ah", b: "hail", a: 30)

do {
    try ArtistAhmed.dopainting(payment: 400)
}
catch paymentError.paymentLow {
    print( "The payment is low")

}
struct Doctor : person{
    var name: String,birthplace: String,age: Int
    var Specialization : String
    var descriptor : String {
        return "My Name is \(name) . I am from \(birthplace). My age is \(age). I am a doctor and my specialty is \(Specialization) "
    }
    func walk() {
        print("walking")
    }
    func run() {
        print("run")
    }
    
    func speak() {
        print("speak")
    }
    
}

let Nore = Doctor(name: "Nore", birthplace: "hail", age: 35, Specialization: "MIS")
print (Nore.descriptor)






