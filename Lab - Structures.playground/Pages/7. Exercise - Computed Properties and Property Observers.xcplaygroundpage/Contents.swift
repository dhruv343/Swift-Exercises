/*:
## Exercise - Computed Properties and Property Observers
 
 The `Rectangle` struct below has two properties, one for width and one for height. Add a computed property that computes the area of the rectangle (i.e. width * height). Create an instance of `Rectangle` and print the `area` property.
 */
struct Rectangle {
    var width: Int
    var height: Int
    var area: Int{
        width*height
    }
}
var reac=Rectangle(width: 5, height: 20)
print("The area of reactangle with width: \(reac.width) and height: \(reac.height) is \(reac.area)")

/*:
 In the `Height` struct below, height is represented in both inches and centimeters. However, if `heightInInches` is changed, `heightInCentimeters` should also adjust to match it. Add a `didSet` to each property that will check if the other property is what it should be, and if not, sets the proper value. If you set the value of the other property even though it already has the right value, you will end up with an infinite loop of each property setting the other.
 
 Create an instance of `Height` and then change one of its properties. Print out the other property to ensure that it was adjusted accordingly.
 */
struct Height {
    var heightInInches: Double{
        didSet{
            if(oldValue != heightInInches){
                heightInCentimeters=heightInInches*2.54
                print("You have changed the value of inches from \(oldValue) to \(heightInCentimeters)")
            }
        }
    }
    
    var heightInCentimeters: Double{
        didSet{
            if(oldValue != heightInCentimeters){
                heightInInches=heightInCentimeters/2.54
                print("You have changed the value of centimeters from \(oldValue) to \(heightInCentimeters)")
            }
        }
    }
    
    init(heightInInches: Double) {
        self.heightInInches = heightInInches
        self.heightInCentimeters = heightInInches*2.54
    }
    init(heightInCentimeters: Double) {
        self.heightInCentimeters = heightInCentimeters
        self.heightInInches = heightInCentimeters/2.54
    }
}
var me=Height(heightInCentimeters: 5)
me.heightInInches=2
print("\(me.heightInInches) \(me.heightInCentimeters)")
/*:
[Previous](@previous)  |  page 7 of 10  |  [Next: App Exercise - Mile Times and Congratulations](@next)
 */
