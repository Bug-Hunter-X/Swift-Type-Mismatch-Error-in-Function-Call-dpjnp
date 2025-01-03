func calculateArea(width: Double, height: Double) -> Double {
    return width * height
}

let area = calculateArea(width: 10, height: 5) // Correct usage

let correctArea = calculateArea(width: Double(10), height: Double(5)) // Correct usage: Type conversion

//Alternative way of handling potential errors by using optional values
func calculateAreaOptional(width: String?, height: String?) -> Double? {
    guard let width = width, let height = height, let widthDouble = Double(width), let heightDouble = Double(height) else {
        return nil
    }
    return widthDouble * heightDouble
}

let optionalArea = calculateAreaOptional(width: "10", height: "5")
if let area = optionalArea {
    print("Area is: "
          + String(area))
} else {
    print("Error: Invalid input strings")
}
