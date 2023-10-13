//
//  Assignment 3.swift
//  Smart Phone based Web Development
//
//  Created by Mahith ‎ on 10/13/23.
//

// Exercise: Functions

import Foundation

// 1. Check if a number is prime or not
func isPrime(_ number: Int) -> Bool {
    if number <= 1 {
        return false
    }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

let numberToCheck = 13
let isNumberPrime = isPrime(numberToCheck)
print("Is the number prime? \(isNumberPrime)")

// 2. Reverse words in a string
func reverseWords(in sentence: String) -> String {
    let words = sentence.split(separator: " ")
    let reversedWords = words.reversed()
    return reversedWords.joined(separator: " ")
}

let inputSentence = "Hello World"
let reversedSentence = reverseWords(in: inputSentence)
print("Reversed sentence: \(reversedSentence)")

// 3. Merge and sort two sorted lists
func mergeAndSortLists(list1: [Int], list2: [Int]) -> [Int] {
    var mergedList = list1 + list2
    mergedList.sort()
    return mergedList
}

let list1 = [1, 3, 5]
let list2 = [2, 4, 6]
let mergedAndSorted = mergeAndSortLists(list1: list1, list2: list2)
print("Merged and sorted list: \(mergedAndSorted)")

// Exercise: Structures

// Define the Building structure and methods
struct Building {
    var address: String
    var numberOfFloors: Int
    var yearBuilt: Int
    var type: String
    
    mutating func changeAddress(newAddress: String) {
        self.address = newAddress
    }
    
    mutating func renovateBuilding(newYearBuilt: Int) {
        self.yearBuilt = newYearBuilt
    }
}

var myBuilding = Building(address: "123 Main St", numberOfFloors: 5, yearBuilt: 1990, type: "Commercial")
myBuilding.changeAddress(newAddress: "456 Elm St")
myBuilding.renovateBuilding(newYearBuilt: 2020)

print("Building Address: \(myBuilding.address)")
print("Number of Floors: \(myBuilding.numberOfFloors)")
print("Year Built: \(myBuilding.yearBuilt)")
print("Type: \(myBuilding.type)")

// Exercise: Classes

// Define the Computer class and the GamingComputer subclass
class Computer {
    func purpose() {
        // Empty method
    }
    
    func priceRange() {
        // Empty method
    }
}

class GamingComputer: Computer {
    override func purpose() {
        print("For gaming and high-performance tasks.")
    }
    
    override func priceRange() {
        print("$1500 to $5000")
    }
}

let myGamingComputer = GamingComputer()
myGamingComputer.purpose()
myGamingComputer.priceRange()

// Exercise: Optionals

// Ask for a password and check its strength
print("Enter a password: ")
if let password = readLine() {
    if password.count < 8 {
        print("Weak password")
    } else if password.rangeOfCharacter(from: CharacterSet.letters) != nil &&
               password.rangeOfCharacter(from: CharacterSet.decimalDigits) != nil &&
               password.rangeOfCharacter(from: CharacterSet.symbols) != nil {
        print("Strong password")
    } else {
        print("Moderate password")
    }
}

// Exercise: Protocols

// Define the EnergySource protocol
protocol EnergySource {
    func energyType() -> String
    func averageConsumption() -> String
    func totalConsumption(distance: Double) -> String
}

class ElectricCar: EnergySource {
    func energyType() -> String {
        return "electric"
    }
    
    func averageConsumption() -> String {
        return "5 kWh per 100km"
    }
    
    func totalConsumption(distance: Double) -> String {
        let consumption = (distance / 100) * 5
        return "\(consumption) kWh"
    }
}

class WindTurbine: EnergySource {
    func energyType() -> String {
        return "wind"
    }
    
    func averageConsumption() -> String {
        return "0 kWh per 100km"
    }
    
    func totalConsumption(distance: Double) -> String {
        return "0 kWh"
    }
}

let myCar = ElectricCar()
let myTurbine = WindTurbine()

print("Car Energy Type: \(myCar.energyType())")
print("Car Average Consumption: \(myCar.averageConsumption())")
print("Car Total Consumption: \(myCar.totalConsumption(distance: 200))")
print("Turbine Energy Type: \(myTurbine.energyType())")
print("Turbine Average Consumption: \(myTurbine.averageConsumption())")
print("Turbine Total Consumption: \(myTurbine.totalConsumption(distance: 1000))")

// Exercise: Enumerations

// Define the PaymentMethod enumeration
enum PaymentMethod {
    case creditCard(String)
    case cash(Double)
    case bankTransfer(String, String)
}

let creditCardPayment = PaymentMethod.creditCard("1234-5678-9012-3456")
let cashPayment = PaymentMethod.cash(100.0)
let bankTransferPayment = PaymentMethod.bankTransfer("Bank XYZ", "1234567890")

// Exercise: Extensions

// Define the Temperature class and an extension
class Temperature {
    var valueInCelsius: Double
    
    init(valueInCelsius: Double) {
        self.valueInCelsius = valueInCelsius
    }
}

extension Temperature {
    func convertToFahrenheit() -> Double {
        return (valueInCelsius * 9/5) + 32
    }
}

let temperature = Temperature(valueInCelsius: 25.0)
let fahrenheitValue = temperature.convertToFahrenheit()
print("\(temperature.valueInCelsius)°C is equal to \(fahrenheitValue)°F")

