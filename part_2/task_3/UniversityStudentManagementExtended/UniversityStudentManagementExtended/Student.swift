class Student: Person {
    var studentID: String
    var major: String

    static var studentCount = 0

    weak var advisor: Professor?

    var formattedID: String {
        return "ID: \(studentID.uppercased())"
    }

    required init(name: String, age: Int, studentID: String, major: String) {
        self.studentID = studentID
        self.major = major
        super.init(name: name, age: age)
        Student.studentCount += 1
    }

    convenience init(studentID: String, major: String) {
        self.init(name: "Unknown", age: Person.minAgeForEnrollment, studentID: studentID, major: major)
    }
}
