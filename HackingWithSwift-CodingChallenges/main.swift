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
    guard wordArray.count > 0 else { return "" }
    
    var result = ""
    var currentLetter = wordArray.first!
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
