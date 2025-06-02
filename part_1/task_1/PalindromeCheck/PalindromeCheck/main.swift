import Foundation

public func isPalindrome(input: String) -> Bool {
    let filtered = input.lowercased().filter { $0.isLetter || $0.isNumber }
    
    if filtered.count <= 1 {
        return false
    }
    
    return filtered == String(filtered.reversed())
}
      
// tests
print(isPalindrome(input: "racecar"))
print(isPalindrome(input: "A man, a plan, a canal: Panama"))
print(isPalindrome(input: "Madam"))
print(isPalindrome(input: "Swift"))
print(isPalindrome(input: ""))
print(isPalindrome(input: "a"))
