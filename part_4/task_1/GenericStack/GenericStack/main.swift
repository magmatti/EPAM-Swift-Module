class Stack<T> {
    private var elements: [T] = []
    
    func push(_ element: T) {
        elements.append(element)
    }
    
    func pop() -> T? {
        elements.popLast()
    }
    
    func size() -> Int {
        return elements.count
    }
    
    func printStackContents() -> String {
        return elements.map { "\($0)" }.joined(separator: ", ")
    }
}

// testing stack implementation
let stack = Stack<Int>()

stack.push(1)
stack.push(2)
stack.push(3)

print(stack.printStackContents())
print("Initial stack size: \(stack.size())")

stack.pop()

print(stack.printStackContents())
print("Stack size after pop: \(stack.size())")
