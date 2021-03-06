// https://leetcode.com/problems/valid-parentheses/submissions/

import Foundation

func isValid(_ s: String) -> Bool {
    var isValidString = true
    // LOOP throw string IF open THEN stack in pile UNTIL find close THEN unstack
    var keyStack = ""
    
    // Loop throw string
    for char in s {
        
        switch char {
        // IF open symbol THEN stack in pile
        case "(","{","[":
            keyStack.append(char)
            isValidString = false
        // IF close symbol THEN check last in pile, if sabe type then popLast ELSE end false
        case ")":
            if keyStack.last == "(" {
                keyStack.removeLast()
                isValidString = true
            } else {
                return false
            }
        case "}":
            if keyStack.last == "{" {
                keyStack.removeLast()
                isValidString = true
            } else {
                return false
            }
        case "]":
            if keyStack.last == "[" {
                keyStack.removeLast()
                isValidString = true
            } else {
                return false
            }
        default:
            // invalid char
            return false
        }
    }
    if keyStack.isEmpty {
        return isValidString
    } else {
        return false
    }
}

isValid("()") // true
isValid("(){}[]") // true
isValid("({[]})") // true
isValid("(}") // false
isValid("(})") // false
isValid("[") // false
isValid("[()") // false

