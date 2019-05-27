import Foundation

// Calculator exercise

var width: Float = 3.4
var height: Float = 2.1
let areaCoveredPerBucket: Float = 1.5

// number of bucket of paint i need in order to cover wall with pain
// single buck 1.5 meter squared
// total area this bucket of paint can cover

var bucketOfPaint: Int {
    get {
        let area = width * height
        let numOfBuckets = ceilf(area/areaCoveredPerBucket)
        return Int(numOfBuckets)
    }
    set {
        let areaCanCover = areaCoveredPerBucket * Float(newValue)
        print("With \(newValue) buckets of paint, you can cover an area of \(areaCanCover) squared meters.")
    }
}

print("You will need \(bucketOfPaint) buckets of paint to cover a wall that is \(width) meter(s) wide and \(height) meter(s) high")

bucketOfPaint = 8

// Pizza exercise

var numberOfPeople: Int = 12
let slicesPerPerson: Int = 4

var pizzaInInches: Int = 18 {
    willSet {
        
    }
    didSet {
        if oldValue >= 18 {
            pizzaInInches = 18
            print("Invalid specified inches. pizzaInInches set to max value 18.")
        }
        
    }
}

pizzaInInches = 33

var numberOfSlices: Int {
    get {
        return pizzaInInches - 4 // Getter
    }
    set {
        print ("number of Slices now has a new value which is \(newValue)")
    }
    
}

var numberOfPizza: Int {
    get {
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set {
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}

numberOfPizza = 4

print("Number of Slices: \(numberOfSlices)")

