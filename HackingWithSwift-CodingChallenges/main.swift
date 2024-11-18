//
//  main.swift
//  HackingWithSwift-CodingChallenges
//
//  Created by Sebastian-Alexandru Popa on 17.11.2024.
//

import Foundation


assert(challenge1(input: "No duplicates") == true, "Challenge 1 failed")
assert(challenge1(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(challenge1(input: "AaBbCc") == true, "Challenge 1 failed")
assert(challenge1(input: "Hello, world") == false, "Challenge 1 failed")

assert(challenge2(input: "rotator") == true, "Challenge 2 failed")
assert(challenge2(input: "Rats live on no evil star") == true, "Challenge 2 failed")
assert(challenge2(input: "Never odd or even") == false, "Challenge 2 failed")
assert(challenge2(input: "Hello, world") == false, "Challenge 2 failed")

assert(challenge3(word1: "abca", word2: "abca") == true, "Challenge 3 failed")
assert(challenge3(word1: "abc", word2: "cba") == true, "Challenge 3 failed")
assert(challenge3(word1: " a1 b2 ", word2: " b1 a2 ") == true, "Challenge 3 failed")
assert(challenge3(word1: "abc", word2: "abca") == false, "Challenge 3 failed")
assert(challenge3(word1: "abc", word2: "Abc") == false, "Challenge 3 failed")
assert(challenge3(word1: "abc", word2: "cbAa") == false, "Challenge 3 failed")
assert(challenge3(word1: "abcc", word2: "abca") == false, "Challenge 3 failed")

assert("Hello, world".challenge4Contains("Hello") == true, "Challenge 4 failed")
assert("Hello, world".challenge4Contains("WORLD") == true, "Challenge 4 failed")
assert("Hello, world".challenge4Contains("Goodbye") == false, "Challenge 4 failed")

assert(challenge5(input: "The rain in Spain", contains: "a") == 2, "Challenge 5 failed")
assert(challenge5(input: "Mississippi", contains: "i") == 4, "Challenge 5 failed")
assert(challenge5(input: "Hacking with Swift", contains: "i") == 3, "Challenge 5 failed")

assert(challenge6(input: "wombat") == "wombat", "Challenge 6 failed")
assert(challenge6(input: "hello") == "helo", "Challenge 6 failed")
assert(challenge6(input: "Mississippi") == "Misp", "Challenge 6 failed")

assert(challenge7(input: "a   b   c") == "a b c", "Challenge 7 failed")
assert(challenge7(input: "    a") == " a", "Challenge 7 failed")
assert(challenge7(input: "abc") == "abc", "Challenge 7 failed")

assert(challenge8(word1: "abcde", word2: "eabcd") == true, "Challenge 8 failed")
assert(challenge8(word1: "abcde", word2: "cdeab") == true, "Challenge 8 failed")
assert(challenge8(word1: "abcde", word2: "abced") == false, "Challenge 8 failed")
assert(challenge8(word1: "abc", word2: "a") == false, "Challenge 8 failed")

assert(challenge9(input: "The quick brown fox jumps over the lazy dog") == true, "Challenge 9 failed")
assert(challenge9(input: "The quick brown fox jumped over the lazy dog") == false, "Challenge 9 failed")
assert(challenge9(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 9 failed")
assert(challenge9(input: "A wizard's job is to vex chumps quickly in fog.") == true, "Challenge 9 failed")
assert(challenge9(input: "Hello, world!") == false, "Challenge 9 failed")

assert(challenge10(input: "Swift Coding Challenges") == (6, 15), "Challenge 10 failed")
assert(challenge10(input: "Mississippi") == (4, 7), "Challenge 10 failed")
assert(challenge10(input: "Hello, world!") == (3, 7), "Challenge 10 failed")
assert(challenge10(input: "AEIOU aeiou") == (10, 0), "Challenge 10 failed")
assert(challenge10(input: "12345") == (0, 0), "Challenge 10 failed")
assert(challenge10(input: "") == (0, 0), "Challenge 10 failed")

assert(challenge11(word1: "Clamp", word2: "Cramp") == true, "Challenge 11 failed")
assert(challenge11(word1: "Clamp", word2: "Crams") == true, "Challenge 11 failed")
assert(challenge11(word1: "Clamp", word2: "Grams") == true, "Challenge 11 failed")
assert(challenge11(word1: "Clamp", word2: "Grans") == false, "Challenge 11 failed")
assert(challenge11(word1: "Clamp", word2: "Clam") == false, "Challenge 11 failed")
assert(challenge11(word1: "clamp", word2: "maple") == false, "Challenge 11 failed")

assert(challenge12(input: "swift switch swill swim") == "swi", "Challenge 12 failed")
assert(challenge12(input: "flip flap flop") == "fl", "Challenge 12 failed")
assert(challenge12(input: "apple apricot avocado") == "a", "Challenge 12 failed")

assert(challenge13(input: "aabbcc") == "a2b2c2", "Challenge 13 failed")
assert(challenge13(input: "aaabaaabaaa") == "a3b1a3b1a3", "Challenge 13 failed")
assert(challenge13(input: "aaAAaa") == "a2A2a2", "Challenge 13 failed")
assert(challenge13(input: "a") == "a1", "Challenge 13 failed")
assert(challenge13(input: "") == "", "Challenge 13 failed")
assert(challenge13(input: "aaa") == "a3", "Challenge 13 failed")
assert(challenge13(input: "ab") == "a1b1", "Challenge 13 failed")

assert(challenge15(input: "Swift Coding Challenges") == "tfiwS gnidoC segnellahC", "Challenge 15 failed")
assert(challenge15(input: "The quick brown fox") == "ehT kciuq nworb xof", "Challenge 15 failed")
assert(challenge15(input: "Hello World") == "olleH dlroW", "Challenge 15 failed")
assert(challenge15(input: "Test this sentence") == "tseT siht ecnetnes", "Challenge 15 failed")
assert(challenge15(input: "Singleword") == "drowelgniS", "Challenge 15 failed")
assert(challenge15(input: "") == "", "Challenge 15 failed")

//challenge16() // uncomment this line of code to see the output. Since this challenge did not want to assert specific cases, I commented this out for keeping the console clear

var range = 1...5
assert(range.contains(challenge17(from: 1, to: 5)) == true, "Challenge 17 failed")
range = 8...10
assert(range.contains(challenge17(from: 8, to: 10)) == true , "Challenge 17 failed")
range = 12...12
assert(range.contains(challenge17(from: 12, to: 12)) == true, "Challenge 17 failed")
range = 12...18
assert(range.contains(challenge17(from: 12, to: 18)) == true, "Challenge 17 failed")

assert(challenge18(number: 4, power: 3) == pow(4.0, 3.0), "Challenge 18 failed")
assert(challenge18(number: 2, power: 8) == pow(2.0, 8.0), "Challenge 18 failed")
assert(challenge18(number: 5, power: 0) == pow(5.0, 0.0), "Challenge 18 failed")
assert(challenge18(number: 2, power: -3) == pow(2.0, -3.0), "Challenge 18 failed")
assert(challenge18(number: -2, power: 3) == pow(-2.0, 3.0), "Challenge 18 failed")
assert(challenge18(number: -2, power: -2) == pow(-2.0, -2.0), "Challenge 18 failed")

var result = challenge19(a: 5, b: 10)
assert(result == (10, 5), "Challenge 19 failed")

result = challenge19(a: -3, b: 7)
assert(result == (7, -3), "Challenge 19 failed")

result = challenge19(a: 0, b: 0)
assert(result == (0, 0), "Challenge 19 failed")

result = challenge19(a: 42, b: -42)
assert(result == (-42, 42), "Challenge 19 failed")

assert(challenge20(number: 11) == true, "Challenge 20 failed")
assert(challenge20(number: 13) == true, "Challenge 20 failed")
assert(challenge20(number: 4) == false, "Challenge 20 failed")
assert(challenge20(number: 9) == false, "Challenge 20 failed")
assert(challenge20(number: 16777259) == true, "Challenge 20 failed")


assert(challenge21(number: 12) == (17, 10), "Challenge 21 failed")
assert(challenge21(number: 28) == (35, 26), "Challenge 21 failed")

assert(challenge22(for: 32) == (4, "00000100"), "Challenge 22 failed")
assert(challenge22(for: 41) == (148, "10010100"), "Challenge 22 failed")
assert(challenge22(for: 4) == (32, "00100000"), "Challenge 22 failed")
assert(challenge22(for: 148) == (41, "00101001"), "Challenge 22 failed")

assert(challenge23(string: "01010101") == true, "Challenge 23 failed")
assert(challenge23(string: "123456789") == true, "Challenge 23 failed")
assert(challenge23(string: "9223372036854775808") == true, "Challenge 23 failed")
assert(challenge23(string: "1.01") == false, "Challenge 23 failed")

//Are the letters unique? -> Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account.
func challenge1(input word: String) -> Bool {
    return Set(word).count == word.count
}

//Is a string a palindrome? -> Write a function that accepts a String as its only parameter, and returns true if the string reads the same when reversed, ignoring case.
func challenge2(input word: String) -> Bool {
    return word.lowercased() == String(word.lowercased().reversed())
}

//Do two strings contain the same characters? -> Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.
func challenge3(word1 left: String, word2 right: String) -> Bool {
    return left.sorted() == right.sorted()
}

//Does one string contain another? -> Write your own version of the contains() method on String that ignores letter case, and without using the existing contains() method.
extension String {
    func challenge4Contains(_ string: String) -> Bool {
        return range(of: string, options: .caseInsensitive) != nil
    }
}

// Count the characters -> Write a function that accepts a string, and returns how many times a specific character appears, taking case into account.
func challenge5(input word: String, contains character: Character) -> Int {
    return word.reduce(into: 0) { partialResult, char in
        if char == character {
            partialResult += 1
        }
    }
}

// Remove duplicate letters from a string -> Write a function that accepts a string as its input and returns the same string with duplicate letters removed, so that each letter appears only once.
func challenge6(input word: String) -> String {
    var lettersMap = [Character: Bool]()
    return word.filter{ character in
        lettersMap.updateValue(true, forKey: character) == nil
    }
}

// Condense whitespace -> Write a function that returns a string with any consecutive spaces replaced with a single space.
func challenge7(input word: String) -> String {
    return word.replacingOccurrences(of: " +", with: " ", options: .regularExpression)
}

// String is rotated -> Write a function that accepts two strings, and returns true if one string is a rotation of the other, taking letter case into account.
func challenge8(word1 left: String, word2 right: String) -> Bool {
    guard left.count == right.count else {
        return false
    }
    let doubledLeftInput = left + left
    return doubledLeftInput.contains(right)
}

// Find pangrams -> Write a function that returns true if it is given a string that is an English pangram, ignoring letter case.
// A pangram is a string that contains every letter of the alphabet at least once.
func challenge9(input word: String) -> Bool {
    guard word.count >= 26 else {
        return false
    }
    var cleanedWord = word.lowercased()
    cleanedWord.removeAll { character in
        !character.isLetter
    }
    return Set(cleanedWord).count == 26
}

// Vowels and consonants -> Given a string in English, return a tuple containing the number of vowels and consonants.
func challenge10(input word: String) -> (numberOfVowels: Int, numberOfConsonants: Int) {
    var cleanedWord = word.lowercased()
    cleanedWord.removeAll { character in
        !character.isLetter
    }
    let numberOfVowels = cleanedWord.reduce(into: 0) { partialResult, char in
        if char.isVowel() {
            partialResult += 1
        }
    }
    let numberOfConsonants = cleanedWord.count - numberOfVowels
    return (numberOfVowels, numberOfConsonants)
}

extension Character {
    func isVowel() -> Bool {
        switch self {
        case "a", "e", "i", "o", "u":
            return true
        default:
            return false
        }
    }
}

// Three different letters -> Write a function that accepts two strings, and returns true if they are identical in length but have no more than three different letters, taking case and string order into account.
func challenge11(word1 left: String, word2 right: String) -> Bool {
    guard left.count == right.count else {
        return false
    }
    var numberOfDifferences = 0
    let leftArray = Array(left)
    let rightArray = Array(right)
    for (i, _) in leftArray.enumerated() {
        if leftArray[i] != rightArray[i] {
            numberOfDifferences += 1
            if(numberOfDifferences > 3) {
                return false
            }
        }
    }
    return true
}

// Find longest prefix -> Write a function that accepts a string of words with a similar prefix, separated by spaces, and returns the longest substring that prefixes all words.
func challenge12(input phrase: String) -> String {
    let words = phrase.components(separatedBy: " ")
    guard let firstWord = words.first else {
        return ""
    }
    
    var prefix = ""
    
    for letter in firstWord {
        prefix.append(letter)
        if !words.allSatisfy({ word in
            word.hasPrefix(prefix)
        }) {
            prefix.removeLast()
            break
        }
    }
    return prefix
}

// Run-length encoding -> Write a function that accepts a string as input, then returns how often each letter is repeated in a single run, taking case into account.
func challenge13(input word: String) -> String {
    let wordArray = Array(word)
    guard var currentLetter = wordArray.first else { return "" }
    
    var result = ""
    var counter = 1
    for i in 1..<wordArray.count {
        if(wordArray[i] == currentLetter) {
            counter += 1
        } else {
            result.append("\(currentLetter)\(counter)")
            currentLetter = wordArray[i]
            counter = 1
        }
    }
    result.append(String("\(currentLetter)\(counter)"))
    return result
}

// Reverse the words in a string -> Write a function that returns a string with each of its words reversed but in the original order, without using a loop.
func challenge15(input phrase: String) -> String {
    let words = phrase.components(separatedBy: " ")
    
    let reversedWords = words.map { word in
        word.reversed()
    }
    
    return String(reversedWords.joined(separator: " "))
}

// Fizz Buzz -> Write a function that counts from 1 through 100, and prints “Fizz” if the counter is evenly divisible by 3, “Buzz” if it’s evenly divisible by 5, “Fizz Buzz” if it’s even divisible by three and five, or the counter number for all other cases.
func challenge16() {
    for i in 1...100 {
        switch i {
        case _ where i.isMultiple(of: 3) && i.isMultiple(of: 5):
            print("Fizz Buzz")
        case _ where  i.isMultiple(of: 3):
            print("Fizz")
        case _ where  i.isMultiple(of: 5):
            print("Buzz")
        default:
            print(i)
        }
    }
}

// Generate a random number in a range -> Write a function that accepts positive minimum and maximum integers, and returns a random number between those two bounds, inclusive.
func challenge17(from lower: Int, to upper: Int) -> Int {
    return Int.random(in: lower...upper)
}

// Recreate the pow() function -> Create a function that accepts positive two integers, and raises the first to the power of the second.
func challenge18(number: Int, power: Int) -> Double {
    if power == 0 { return 1 }
    var result: Double = Double(number)
    for _ in 2...abs(power) {
        result *= Double(number)
    }
    if power < 0 { return 1 / result }
    return result
}

// Swap two numbers -> Swap two positive variable integers, a and b, without using a temporary variable.
func challenge19(a: Int, b: Int) -> (Int, Int) {
    return (b, a)
}

// Number is prime -> Write a function that accepts an integer as its parameter and returns true if the number is prime.
func challenge20(number: Int) -> Bool {
    guard number > 1 else { return false }
    let limit = Int(sqrt(Double(number)))
    for i in 2...limit {
        if number.isMultiple(of: i) {
            return false
        }
    }
    return true
}

// Count binary ones -> Create a function that accepts any positive integer and returns the next highest and next lowest number that has the same number of ones in its binary representation. If either number is not possible, return nil for it.
func challenge21(number: Int) -> (nextHighest: Int?, nextLowest: Int?) {
    func numberOfOnes(number: Int) -> Int {
        let binaryNumber = String(number, radix: 2)
        return binaryNumber.filter { digit in
            digit == "1"
        }.count
    }
    
    var nextHighest: Int? = nil
    var nextLowest: Int? = nil
    
    let onesOfNumber = numberOfOnes(number: number)
    
    for i in number+1...Int.max {
        if onesOfNumber == numberOfOnes(number: i) {
            nextHighest = i
            break
        }
    }
    
    for i in (0..<number).reversed() {
        if onesOfNumber == numberOfOnes(number: i) {
            nextLowest = i
            break
        }
    }
    
    return (nextHighest, nextLowest)
}

// Binary reverse -> Create a function that accepts an unsigned 8-bit integer and returns its binary reverse, padded so that it holds precisely eight binary digits.
func challenge22(for number: UInt8) -> (number: UInt8, binaryRepresentation: String) {
    let binaryNumber = String(number, radix: 2)
    let paddedBinaryNumber = String(repeating: "0", count: 8 - binaryNumber.count) + binaryNumber
    let reversedBinaryNumber = String(Array(paddedBinaryNumber).reversed())
    let reversedNumber = UInt8(reversedBinaryNumber, radix: 2) ?? 0
    return (reversedNumber, reversedBinaryNumber)
}

// Integer disguised as string -> Write a function that accepts a string and returns true if it contains only numbers, i.e. the digits 0 through 9.
func challenge23(string: String) -> Bool {
    return string.allSatisfy { char in
        char.isNumber
    }
}
