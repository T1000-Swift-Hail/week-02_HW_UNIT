import UIKit
import Darwin
protocol person {

    var name :String{get}
    var birthplace: String {get}
    var age : Int{get}
    func walk()
    func run ()
    func speak()
}
enum paymentError :Error{

case paymentLow
    
}
class Artist  :person {
    
    var name: String
    var birthplace: String
    var age: Int
    
    init(n:String, b: String, a :Int){
        self.name = n
        self.birthplace = b
        self.age=a
    }
    func walk(){
        print("walking")
    }
    func run(){
        print("Running")
    }
    func speak(){
    print("Speaking")
    }
        
}
extension Artist {
    
    func dopainting(payment :Int)throws {
  guard payment >= 500 else {
        }
      print("You painting is Done")
    }
   var ArtistHind = Artist(n:"Hd", b: "hail", a: 28)
    
  do {
   try ArtistAhmed.dopainting(payment:400)
    }
catch paymentError.paymentLow {
print("The payment is low")
}
struct Doctor : person {
   var name: String,birthplace:String,age: Int
        var Specialization : String
            var descriptor :String {
   return "M Name is \(name) . I am from \(birthplace).My doctor and my specialty is \(Specialization)"
            }
            func Walk() {
         print("walking")
            }
            func run() {
                print("run")
            }
            func speak() {
                print("speak")
            
            }
let Hind = (name:"Hind",birthplace: "hail", age: 28,Specialization:"CS")
  print(Hind.descriptor)









