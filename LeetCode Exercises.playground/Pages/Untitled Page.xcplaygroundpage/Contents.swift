// Ex01: Palindrome checker

func isPalindrome(_ x: Int) -> Bool {
        
        var xString = String(x)
        var xStringReversed = reverseString(xString)
        if xString == xStringReversed {
            return true
        } else {
            return false
        }
    }
    
    func reverseString(_ text: String) -> String {
        var reversedString = ""
        for char in text {
            reversedString = "\(char)\(reversedString)"
        }
        return reversedString
    }

isPalindrome(12223)
