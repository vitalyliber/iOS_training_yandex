import Cocoa

//func fibonachi (n: Int) -> Int {
//    guard n > 2 else {
//        return 1
//    }
//    let sum = fibonachi(n: n - 1) + fibonachi(n: n - 2)
//    return sum
//}
//let number = fibonachi(n: 6)
//print(number)

struct Go {
    var meters = 0
    var direction = "forward"
}

class Car {
    func right(meters: Int) -> () {
        print("The car drove \(meters) meters to the right")
    }
    
    func left(meters: Int) -> () {
        print("The car drove \(meters) meters to the left")
    }
    
    func forward(meters: Int) -> () {
        print("The car drove \(meters) meters to the forward")
    }
    
    func back(meters: Int) -> () {
        print("The car drove \(meters) meters to the back")
    }
    
    func execute(command: Go) -> () {
        guard ["right", "left", "forward", "back"].contains(command.direction) else {
            return print("Please, past a valid direction")
        }
        guard command.meters > 0 else {
            return print("Number of meters must more than 0")
        }
        switch command.direction {
        case "right":
            self.right(meters: command.meters)
        case "left":
            self.left(meters: command.meters)
        case "forward":
            self.forward(meters: command.meters)
        case "back":
            self.back(meters: command.meters)
        default:
            print("Something went wrong")
        }
    }
}

//Car().right(meters: 3)

let data_transfer_object = Go(
    meters: 55,
    direction: "forward"
)

Car().execute(command: data_transfer_object)
