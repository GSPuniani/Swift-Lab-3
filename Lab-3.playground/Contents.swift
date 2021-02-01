import Cocoa

// Problem 1

var colorHex: [String:String] = [
    "purple" : "#6C3483",
    "blue" : "#2874A6",
    "green": "#1E8449" ,
    "orange" : "#D35400",
    "yellow" : "#F1C40F",
    "white" : "#FFFFFF",
    "black" : "#000000"
]

// Iterate through each returned tuple and print each value
for (_, hex) in colorHex {
    print(hex)
}


// Problem 2

var colors = ["red", "orange", "purple", "pink", "blue", "red", "green", "red", "blue", "purple", "pink" , "purple", "purple"]

var colorDict: [String: Int] = [:]

// Add new colors to the dictionary with color count of 1, otherwise increment the color's count by 1
for color in colors {
    if colorDict[color] == nil {
        colorDict[color] = 1
    }
    else {
        colorDict[color]! += 1
    }
}

for (color, count) in colorDict {
    print("\(color) - \(count)")
}


// Problem 3

// Initialize the array with element 1, then add the sum previous element and the last element to the end of array
func fibo(n: Int) -> [Int] {
    var fiboNums: [Int] = [1]
    var counter: Int = 1
    var firstSummand = 1
    while counter < n {
        fiboNums += [firstSummand]
        firstSummand += fiboNums[counter - 1]
        counter += 1
    }
    return fiboNums
}

print(fibo(n: 7)) //[1, 1, 2, 3, 5, 8, 13]
print(fibo(n: 5)) //[1, 1, 2, 3, 5]


// Problem 4

func powersOfTwo(N: Int) -> [Int] {
    // Begin with 1, and compare each subsequent power of two with input before adding to array and incrementing exponent
    var exponent: Int = 0
    var powers: [Int] = []
    var twoPower: Int = 1
    while twoPower <= N {
        powers += [twoPower]
        twoPower *= 2
        exponent += 1
    }
    return powers
}

print(powersOfTwo(N: 100)) //[1, 2, 4, 8, 16, 32, 64]

// Problem 5

var coursesAndStudents = ["MOB": 30, "BEW": 40, "FEW": 30, "DS": 40]

func studentsTracksCount(coursesStudents: [String: Int]) {
    for (course, studentCount) in coursesStudents {
        print("There are \(studentCount) students in the \(course) track.")
    }
}

studentsTracksCount(coursesStudents: coursesAndStudents)


// Problem 6

func firstAndLast(intArray: [Int]) -> Bool {
//    Return true only if the first and last elements are the same in an array of minimum size 1; otherwise, return false
    if intArray.count >= 1 {
        let firstInt = intArray[0]
        let lastInt = intArray[intArray.count - 1]
        if firstInt == lastInt {
            return true
        }
    }
    return false
}

print(firstAndLast(intArray: [1, 2, 3])) //false
print(firstAndLast(intArray: [1, 2, 1])) //true


// Problem 7

func arraySum(intArray: [Int]) -> Int {
//    Initialize sum to 0, then iterate through array and add each integer to the sum
    var sum: Int = 0
    for num in intArray {
        sum += num
    }
    return sum
}

print(arraySum(intArray: [1, 2, 3, 4])) //10


// Problem 8

func reverseArray(forwardArray: [Int]) -> [Int] {
//    Add elements from input array to output array by iterating from right to left
    var reverseArray: [Int] = []
    let lenArray: Int = forwardArray.count
    for i in 1...lenArray {
        reverseArray.append(forwardArray[lenArray - i])
    }
    return reverseArray
}

print(reverseArray(forwardArray: [1, 2, 3])) //[3, 2, 1]


// Problem 9

func uniqueLetters(inputString: String) -> Bool {
    return true
}


// Problem 10

func charCount(inputString: String, targetChar: Character) -> Int {
//    Initialize the count at 0, the increment it when the target character appears while traversing the input string
    var count: Int = 0
    for char in inputString {
        if char == targetChar {
            count += 1
        }
    }
    return count
}

print(charCount(inputString: "apples", targetChar: "p")) //2


// Problem 11
