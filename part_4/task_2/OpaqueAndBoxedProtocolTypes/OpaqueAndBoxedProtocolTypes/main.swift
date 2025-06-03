func generateShape() -> Shape {
    return Circle(radius: 5)
}

func calculateShapeDetails(of shape: Shape) -> (area: Double, perimeter: Double) {
    return (shape.area(), shape.perimeter())
}

// testing
let shape = generateShape()
let (area, perimeter) = calculateShapeDetails(of: shape)
print("Area: \(area), Perimeter: \(perimeter)")
