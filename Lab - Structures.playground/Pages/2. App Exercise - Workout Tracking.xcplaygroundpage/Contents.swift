/*:
## App Exercise - Workout Tracking
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 Your fitness tracking app wouldn't be much of a fitness tracker if it couldn't help users track their workouts. In order to track a user's run, you'll need to have some kind of data structure that can hold information about the workout. For the sake of simplicity, you'll focus specifically on running workouts.
 
 Create a `RunningWorkout` struct. It should have variables properties for `distance`, `time`, and `elevation`. All three properties should have default values of 0.0.
 */
struct RunningWorkout{
    var distance = Double.init()
    var time = Double.init()
    var elevation = Double.init()
    func PrintOut(){
        print("distance: \(distance),\ntime: \(time),\nelevation: \(elevation)\n")
    }
    mutating func setValue(distance:Double, time:Double, elevation:Double){
        self.distance=distance
        self.time=time
        self.elevation=elevation
    }
}

//:  Create a variable instance of `RunningWorkout` called `firstRun` without supplying any arguments. Print out all three properties of `firstRun`. This is a good example of when using default values is appropriate, seeing as all running workouts start with a distance, time, and elevation change of 0.
var firstRun=RunningWorkout()
firstRun.PrintOut()
//:  Now imagine that throughout the course of the run, you go a distance of 2,396 meters in 15.3 minutes, and gain 94 meters of elevation. Update the values of `firstRun`'s properties accordingly. Print a statement about your run using the values of each property.
firstRun.setValue(distance: 2396, time: 15.3, elevation: 94)
firstRun.PrintOut()

/*:
[Previous](@previous)  |  page 2 of 10  |  [Next: Exercise - Memberwise and Custom Initializers](@next)
 */
