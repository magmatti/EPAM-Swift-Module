class Person {
    var name: String
    var age: Int

    static let minAgeForEnrollment = 16

    lazy var profileDescription: String = {
        return "\(name) is \(age) years old."
    }()

    var isAdult: Bool {
        return age >= 18
    }

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
