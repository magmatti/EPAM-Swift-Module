import Foundation

public func isBalancedParentheses(input: String) -> Bool {
    var count = 0
    var foundParentheses: Bool = false
    
    for char in input {
        
        if char == "(" {
            count += 1
            foundParentheses = true
        } else if char == ")" {
            count -= 1
            foundParentheses = true
            if count < 0 {
                return false
            }
        }
    }
    
    // if count equals zero it means all parentheses are closed
    return foundParentheses && count == 0
}

// tests
print(isBalancedParentheses(input: "[]"))
print(isBalancedParentheses(input: "(())"))
print(isBalancedParentheses(input: "(()"))
print(isBalancedParentheses(input: "())("))
print(isBalancedParentheses(input: "hello()"))
print(isBalancedParentheses(input: "(\n())"))
