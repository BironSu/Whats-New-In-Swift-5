import UIKit

// Swift 5.0 Updates

// TODO: Create a repo to highlight Swift 5.0 updates
// Prerequisite is Xcode 10.2+
// Xcode 11 will be shipped with Swift 5.1


//===========================================================================
// Raw Strings
// Extended String Delimiters - https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html
// "Hello"

print("\"Hello\"")

// prints raw string as "Hello"
let message = #""hello""#
let programmingLanguage = "iOS"

// handling string interpolation by adding an extra # delimeter embedding in \#()
let pursuitMessage = #""Welcome to Pursuit's \#(programmingLanguage) 6.0 cohort""#

print(message)

print(pursuitMessage)

//===========================================================================
// Character Properties
//===========================================================================

// present emoji keyboard - control, command + space bar

let sentence = "1$🔥&4ap*"

for char in sentence {
    if char.isLetter {
        print("letter: \(char)")
    }
    if char.isCurrencySymbol {
        print("currency Symbol: \(char)")
    }
    if char.isSymbol {
        print("symbol: \(char)")
    }
    if char.isPunctuation {
        print("punctuation: \(char)")
    }
}

//==========================================================================
// Review map, filter, flatmap
//==========================================================================

let tweets = [ "starting the fall cycle at #pursuit",
               "#darnclosures are killing me",
               "dreams of an #ios #developer",
               "#swiftui is dope, #iosdeveloper #mindblown"
]

// use map, filter and flatmap to return an array of hashtags
// output: ["#pursuit", "#darnclosures", "#ios", "#developer", "#swiftui", "#iosdeveloper", "#mindblown"]

// Hint: create a function that takes in a string and returns an array

func getHashtags(input: String) -> [String] {
    let newArray = input.components(separatedBy: " ")
    return newArray.filter{$0.starts(with: "#")}
}

let tags = tweets.map{getHashtags(input: $0)}.flatMap{$0}
print(tags)
