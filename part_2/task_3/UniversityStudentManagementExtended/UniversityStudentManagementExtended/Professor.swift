class Professor: Person {
    var faculty: String

    static var professorCount = 0

    var fullTitle: String {
        return "Prof. \(name), Faculty of \(faculty)"
    }

    init(name: String, age: Int, faculty: String) {
        self.faculty = faculty
        super.init(name: name, age: age)
        Professor.professorCount += 1
    }
}
