/*:
## Exercise - Create Functions

 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */
func introduceMyself(){
    print("My name is dhruv and I am a student at Chitkara University")
}
introduceMyself()
//:  Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.
func magicEightBall(){
    let randomNum = Int.random(in: 0...4)
    switch randomNum {
    case 1: print("You chose 1")
    case 2: print("You chose 2")
    case 3: print("You chose 3")
    case 4: print("You chose 4")
    default: print("Some other ball you chose")
    }
}
magicEightBall()
magicEightBall()
magicEightBall()
/*:
page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
 */
