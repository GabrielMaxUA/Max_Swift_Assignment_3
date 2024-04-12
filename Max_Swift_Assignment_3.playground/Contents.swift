import Cocoa

class Ship{
    var name: String
    var year: Int
    var countryOfOrigin: String
    
    init(name: String, year: Int, countryOfOrigin: String) {
        self.name = name
        self.year = year
        self.countryOfOrigin = countryOfOrigin
    }
}
//CruiseShip (subclass)
//maxCapacity
//oceanOfOperation
//currentPassengerCount
//add a method to add a passenger if the ship is not at max capacity
//add a method to print the current passenger count
class CruiseShip: Ship {
    var maxCapacity: Int
    let oceanOfOperation: String
    var currentPassengerCount: Int
    
    init(name: String, year: Int, countryOfOrigin: String, maxCapacity: Int, oceanOfOperation: String) {
        self.maxCapacity = 1
        self.oceanOfOperation = oceanOfOperation
        self.currentPassengerCount = 0 // Initialize currentPassengerCount to 0
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func addPassenger() {
        if currentPassengerCount < maxCapacity {
            currentPassengerCount += 1
            print("Welcome aboard!!!")
        }
        else{
            print("Sorry but there is no more room on the ship")
        }
    }
    
    func printCurrentCapacity () {
        print("\(currentPassengerCount)")
    }
}
//CargoShip (subclass)
//maxCargoCapacity
//currentCargoCount
//isInternational
//add a method to add cargo if the ship is not at max capacity
//add a method to print the current cargo count

class CargoShip: Ship{
    var maxCargoCapacity: Int
    var currentCargoCount: Int
    var isInternational: Bool
    init(name: String, year: Int, countryOfOrigin: String,maxCargoCapacity: Int, isInternational: Bool) {
        self.maxCargoCapacity = maxCargoCapacity
        self.currentCargoCount = 0
        self.isInternational = isInternational
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func addCargo() {
        if currentCargoCount < maxCargoCapacity {
            currentCargoCount += 1
        }
        else{
            print("Sorry, no more room for your cargo")
        }
    }
    
    func printCurrentCargoCapacity () {
        print("\(currentCargoCount)")
    }
}
//PirateShip (subclass)
//maxTreasureCapacity
//currentTreasureCount
//numberOfCannons
//add a method to add treasure if the ship is not at max capacity
//add a method to print the current treasure count
class PirateShip: Ship{
    var maxTreasureCapacity: Int
    var currentTreasureCount: Int
    var numberOfCannons: Int
    
    init(name: String, year: Int, countryOfOrigin: String, maxTreasureCapacity: Int) {
         self.maxTreasureCapacity = maxTreasureCapacity
         self.currentTreasureCount = 0
         self.numberOfCannons = 0
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func addTreasure() {
        if currentTreasureCount < maxTreasureCapacity {
            currentTreasureCount += 1
        }
        else{
            print("Sorry! But there is no more room for your preciouse belongings! Agrrrr!!!")
        }
    }
    
    func printCurrentTreasureCapacity () {
        print("\(currentTreasureCount)")
    }
}

let myShip = PirateShip(name: "Black Pearl", year: 1802, countryOfOrigin: "St.Maarten", maxTreasureCapacity: 1)

myShip.addTreasure()
myShip.printCurrentTreasureCapacity()

myShip.addTreasure()
myShip.printCurrentTreasureCapacity()//checking if func works

print("Ship Name: \(myShip.name)")
print("My Ship came from: \(myShip.countryOfOrigin)")
print("My ship was build in \(myShip.year)")

let cruise = CruiseShip(name: "Ruby Princess", year: 2008, countryOfOrigin: "Malta", maxCapacity: 1, oceanOfOperation: "Pacific")
cruise.addPassenger()
cruise.printCurrentCapacity()
print(" \n\(cruise.name)")
print("\(cruise.year)")
print("Currently onboard: \(cruise.currentPassengerCount)")
print("\(cruise.oceanOfOperation)")
