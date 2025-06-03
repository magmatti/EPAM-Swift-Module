class Circle: Shape {
    let radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func area() -> Double {
        return .pi * radius * radius
    }
    
    func perimeter() -> Double {
        return 2 * .pi * radius
    }
}
