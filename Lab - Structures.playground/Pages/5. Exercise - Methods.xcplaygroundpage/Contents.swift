/*:
## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    func printOut(){
        print("title: \(title) \nauthor: \(author) \npages: \(pages) \nprice: \(price) \n")
    }
}
var random=Book(title: "abc", author: "def", pages: 500, price: 303.33)
random.printOut()
//:  A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
struct Post {
    var message: String="Hello this is dhruv"
    var likes = Int.init()
    var numberOfComments = Int.init()
    mutating func increment(){
        likes=likes+1;
    }
    func printOut(){
        print("message: \(message) \nlikes: \(likes) \nnumber of comments: \(numberOfComments) \n")
    }
}

var profile=Post()
profile.increment()
profile.increment()
profile.printOut()
/*:
[Previous](@previous)  |  page 5 of 10  |  [Next: App Exercise - Workout Functions](@next)
 */
