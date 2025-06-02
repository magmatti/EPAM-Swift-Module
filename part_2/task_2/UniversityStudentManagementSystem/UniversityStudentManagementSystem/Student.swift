class Student: Person {
    var studentID: String
    var major: String

    required init(name: String, age: Int, studentID: String, major: String) {
        self.studentID = studentID
        self.major = major
        super.init(name: name, age: age)
    }

    convenience init(studentID: String, major: String) {
        self.init(name: "Unknown", age: 18, studentID: studentID, major: major)
    }
}
