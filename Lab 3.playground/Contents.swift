import UIKit

// Print all the values from colorHex.
var colorHex: [String:String] = [
    "purple" : "#6C3483",
    "blue" : "#2874A6",
    "green": "#1E8449" ,
    "orange" : "#D35400",
    "yellow" : "#F1C40F",
    "white" : "#FFFFFF",
    "black" : "#000000"
]
for color in colorHex {
    print(color.value)
}

//How many times does each color appear in the array?
var colors: [String] = ["red", "orange", "purple", "pink", "blue", "red", "green", "red", "blue", "purple", "pink" , "purple", "purple"]
var colorCount: [String:Int] = [:]
for color in colors {
    if colorCount[color] == nil {
        colorCount.updateValue(1, forKey: color)
    }
    else {
        colorCount.updateValue(colorCount[color]!+1, forKey: color)
    }
}
print(colorCount)

//Write a fn to display n digits of the Fibonacci Sequence.
func fibonacci(iterations: Int) -> Int {
    var counted: Int = 1
    var prevN: Int = 0
    var currN: Int = 1
    while counted < iterations {
        let new_n: Int = prevN + currN
        prevN = currN
        currN = new_n
        counted += 1
    }
    return currN
}
print(fibonacci(iterations:10))

//Write a function that prints how many students belong to each track.
func studentsInClass(classes:[(course:String, count:Int)]) {
    for cls in classes {
        print(cls.course + " has " + String(cls.count) + " students!")
    }
}

var coursesAndStudents = [("MOB", 30), ("BEW", 40), ("FEW", 30), ("DS", 40)]
studentsInClass(classes: coursesAndStudents)

//Write a function to check if the first and last interger of an array are equal.
func firstAndLastEqual(arr:[Int]) -> Bool {
    if arr[0] == arr[arr.count-1] {
        return true
    }
    else {
        return false
    }
}
var intList:[Int] = [1,3,5,4,3,1]
print(firstAndLastEqual(arr: intList))
intList = [2,3,4,5,4]
print(firstAndLastEqual(arr: intList))


//Write a function to compute the sum of all the elements of a given array of integers.
func sumOfArray(arr:[Int]) -> Int {
    var sol:Int = 0
    for i in arr {
        sol += i
    }
    return sol
}

print(sumOfArray(arr: intList))
print(sumOfArray(arr: [1,2,3,4]))

//Write a function to reverse the elements of an array of integers to left direction. [1,2,3] becomes [3,2,1]

func reverseArray(arr:[Int])  -> [Int] {
    var new_list:[Int] = []
    for i in arr {
        new_list.insert(i, at: 0)
    }
    return new_list
}
print(reverseArray(arr: intList))
print(reverseArray(arr: [1,2,3,4,5]))

//Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters.
func isRandomString(str:String) -> Bool {
    var used_chars:[Character] = []
    for i in str {
        if used_chars.contains(i) {
            return false
        }
        else {
            used_chars.append(i)
        }
    }
    return true
}

print(isRandomString(str: "Ledle"))
print(isRandomString(str: "LlAaDd"))

//Write a function that accepts a String and a character and returns how many times that specific character appears in the string.
func occurances(char:Character, str:String) -> Int {
    var count: Int = 0
    for i in str {
        if i == char {
            count+=1
        }
    }
    return count
}

print(occurances(char: "A", str: "Alpaca"))
print(occurances(char: "a", str: "Alpaca"))


func rowCalc(arr:[[Int]]) -> [Int] {
    var sol: [Int] = []
    for row in arr {
        var count = 0
        for i in row {
            count+=i
        }
        sol.append(count)
    }
    return sol
}

var array3d = [[0,1,2,3],[3,2,1,0],[3,4,5,6],[6,5,4,3]]
print(rowCalc(arr: array3d))
