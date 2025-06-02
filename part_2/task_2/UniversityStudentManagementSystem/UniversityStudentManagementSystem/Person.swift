class Person {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    init?(name: String, age: Int, validateAge: Bool) {
        guard age >= 16 else {
            return nil
        }
        
        self.name = name
        self.age = age
    }
}
