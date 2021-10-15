import UIKit
import Darwin
protocol persona {

    var name :String{get}
    var birthplace: String{get}
    var age : Int{get}
    func walk()
    func run ()
    func speak()
}
enum paymentError{

case paymentLow
    
}
class Artist : persona {
    var name: String
    var birthplace: String
    var age: Int
    func walk(){
        print("walking")
    }
    func run(){
        print("Running")
    }
    func speak(){
    print("Speaking")
    }
    init(name:String,birthplace:String,age:Int){
        self.name = name
        self.birthplace=birthplace
        self.age=age
        }
}
extension Artist {
    func dopainting(payment :Int)throws {
  guard payment >= 500 else {
        }
      print("You painting is Done")
    }
}
var ArristSalim = Artist(n: "Sa",b:"hail",a: 40)
do {
    try ArristSalim.dopainting(payment: 400)
}
catch paymentError.paymentLow {
    print("The payment is low")
}
struct Doctor : person{
    var name: String,birthplace:String,age:Int
    var specializator : String
    var descriotor : String {
    }
    let Nore = Doctor(name: "Nore",birthplace: "hail",age: 35,specializator: "CS")
    print (nore.descriptor)
    
    
    
    




