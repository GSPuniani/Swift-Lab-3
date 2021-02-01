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

print(fibo(n: 7))
print(fibo(n: 5))


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

print(powersOfTwo(N: 100))

// Problem 5

var coursesAndStudents = ["MOB": 30, "BEW": 40, "FEW": 30, "DS": 40]

func studentsTracksCount(coursesStudents: [String: Int]) {
    for (course, studentCount) in coursesStudents {
        print("There are \(studentCount) students in the \(course) track.")
    }
}

studentsTracksCount(coursesStudents: coursesAndStudents)


// Problem 6
