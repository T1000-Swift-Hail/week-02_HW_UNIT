# week-02_HW_UNIT

## Create  protocol Person . It has the following properties and methods
- name : String
- birthPlace : String
- age : Int
- func walk()
- func run()
- func speak()


## Create an enum PaymentError . 
- case paymentLow

## Create a class Artist that conforms to protocol Person
- Conform to the protocol Person properties and methods
- Use an init for the class (Note: Don't give default values for the properties)
- method walk() , print "Walking..."
- method run(), print "RUNNING!!"
- method speak(), print "Speaking..."

## Create an extension to class Artist . Add the following method:
- func doPainting(payment : Int)
- the method doPainting(payment : Int) accepts a pyament of 500 or more . Using a guard , throw an error of type PaymentError.paymentLow if the payment is less than 500 .
- If No errors thrown , the method doPainting(payment : Int) prints "Your Painting is Done."


## Create an Artist ahmed . 
- using do, catch . Call the the method ahmed.doPainting(payment: 400). If an error, print "The payment is low"


## Create a struct Doctor that conforms to protocol Person
- Conform to the protocol Person properties and methods
- Add a new property specialization : String
- Add a new computed property description : String that returns the following : "My Name is < name > . I am from < birthPlace >. My age is < age >. I am a doctor and my specialty is < specialization > "
- method walk() , print "Walking..."
- method run(), print "Doctors don't run"
- method speak(), print "Speaking..."

## Create a Doctor Nora .
- call Nora.run()
- print Nora.description












