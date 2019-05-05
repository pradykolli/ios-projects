import UIKit

var str = "Hello, playground"
str += "!"

var str2 = """
Heya this is prady
I am a bearcat
I have a dog
"""

var str3 = "Hello\t \\ \n \"really"
print(str3)

var str4 = "hello \u{1F330}"

var str5 = "Hello, Prady"

var str6 = str5

str5 += "!"

print(str6)

for ch in str5{
    print(ch, terminator:"")
}

let ch:Character = "F"

let ch2 = "G"

let eAcute:Character = "\u{E9}"
let combined:Character = "\u{65}\u{301}"

var place = "cafe"
print(place.count)

place += "\u{301}"

print(place, place.count)

var start = "hello"

//start += Character("!") // not type casting just initializing an instance of the  struct by passing in the String.

start.append("!") //taking a string

start.append(Character("!"))
print(start)


var message = "Hello and welcome!"
message[message.startIndex]
var  loc = message.index(before:message.endIndex)
message[loc]

var abc = message.index(after:message.startIndex)
message[abc]

loc = message.index(after: message.startIndex)
message[loc]

loc = message.index(message.startIndex, offsetBy:4)
message[loc]

for i in stride(from:0, to:message.count, by:2){
    loc = message.index(message.startIndex, offsetBy: i)
    print(message[loc], terminator:"-")
}

print("\n",message.endIndex.encodedOffset)

message = "Hello,world!"

message.index(of:"o")

let val = message.index(of:"x")

message.contains("world")

message.contains("World")

let loLocation = message.range(of: "lo")
loLocation?.lowerBound.encodedOffset
loLocation?.upperBound.encodedOffset

message.hasPrefix("Hello")
message.hasSuffix(",")


message.insert("x", at: message.index(message.startIndex, offsetBy: 5))
message.insert("y", at: message.index(of:",")!)
message.insert(contentsOf:"out there", at: message.startIndex)


//var greet = "Hello, world"
//message.remove(at:greet.index(of:","))
//message.insert(contentsOf:"People of the", at: greet.index(<#T##i: String.Index##String.Index#>, offsetBy: <#T##String.IndexDistance#>))

var data:[String] = ["Trudeau","Obama","Modi","May","Turnbull","Netanyahu", "Abe"]
data = data.map(
    {(str:String)->String in
        var mystery:String = ""
        var i:Int = str.count - 1
        while i >= 0 {
            let anIndex = str.index(str.startIndex, offsetBy: i)
            mystery.append(str[anIndex])
            i=i-1
        }
        return mystery
    } // end anonymous function
)
print(data)

func addUp(value:Int) -> (Int)->Int {
    return {(x:Int)->Int in return x + value}
}
let add2 = addUp(value: 2)
let add3 = addUp(value: 3)
print(add2(4))
print(add3(4))
print(addUp(value: 10)(4))


var emptyDictionary:[String:Double] = [:]
// a dictionary with 2 elements:
var actors:[String:Double] = ["DiCaprio":45.0,"Dwayne Johnson":52.0]
if actors.isEmpty { // check to see if a dictionary is empty
    print("This won't print, because actors already had something")
}
actors["Cameron Diaz"] = 18.0 // adding a key-value pair // we have added Cameron Diaz
actors["Cameron Diaz"] = 19.0 // changing a value -- the key remains Cameron Diaz
print(actors) // output: ["DiCaprio": 45.0, "Dwayne Johnson": 52.0, "Cameron Diaz": 19.0]
actors["Cameron Diaz"] = nil // removing an element -- bye, Cameron!
let query = actors["Arnold Schwartzenegger"] // query is a Double?, not a Double. Why?
print(actors)
for name in actors.keys { // iterate through all the keys
print(name, terminator:" | ") // output: Dwayne Johnson | DiCaprio |
}
print("")
for salary in actors.values { // output: 52.0 45.0
    print(salary, terminator:" | ")
}
// Note that dictionaries can have any type for value, including *arrays* and other dictionaries!
// These are the populations of various countries during 4 years
var population:[String:[Double]] = ["Afghanistan":[28809167,29726803,30682500,31627506]]
population["Albania"] = [2904780,2900489,2897366,2894475]

let plans = "Let's meet at the café"
let composedCafe = "café"
let decomposedCafe = "cafe\u{0301}"

print(plans.hasSuffix(composedCafe))
// Prints "true"
print(plans.hasSuffix(decomposedCafe))
// Prints "true"


var kolli = "Pradeep Kolli"
kolli.index(of:"l")!.encodedOffset
kolli.range(of: "Kolli")?.lowerBound.encodedOffset
kolli.range(of: "Kolli")?.upperBound.encodedOffset
kolli.hasPrefix("Pra")
kolli.hasSuffix("lli")
kolli.insert("!", at: kolli.index(of: "i")!)
kolli.remove(at: kolli.startIndex)
//kolli.removeSubrange(kolli.range(of:"Kolli")!)

kolli = "Pradeep Kolli"
let left  = str.startIndex
let right = str.endIndex
let blank = str.index(of: " ")
//let result = kolli[left ..< right]
kolli[left ... blank!]
kolli[...blank!]


str = "(660)528-0145"
str.components(separatedBy: [ "-" , "(" , ")" ])
print("pineapple".compare("pineapple").rawValue)
"apple".compare("orange") == .orderedDescending
"apple".compare("orange") == .orderedAscending
"apple".compare("orange") == .orderedSame


"apple" == "orange"
"apple" > "orange"
"apple" <= "orange"


//Exercise

message = "It was the best of times"

print(message.count)
//message += "!!"
message.insert(contentsOf: "?!", at: message.index(before: message.endIndex))
//var ploc = message.index(of: "I")
//message[message.index(ploc!, offsetBy: 1)]
message[message.index(message.startIndex, offsetBy: 1)]
ploc = message.lastIndex(of: "!")
message[message.index(ploc!, offsetBy: -1)]
message.remove(at: message.index(message.startIndex, offsetBy: 3))
message.remove(at: message.index(message.endIndex, offsetBy:-7 ))

