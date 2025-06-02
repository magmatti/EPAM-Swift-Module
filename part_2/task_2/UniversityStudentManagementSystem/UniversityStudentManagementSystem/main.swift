let student1 = Student(name: "Alice", age: 20, studentID: "S001", major: "Computer Science")
let student2 = Student(studentID: "S002", major: "Mathematics")

if let person1 = Person(name: "Tom", age: 15, validateAge: true) {
    print("Person created: \(person1.name)")
} else {
    print("Failed to create person - age too low")
}

let professor = Professor(name: "Dr Smith", age: 45, faculty: "Engineering")
let uni = University(name: "Tech University", location: "New York")

print("Student1: \(student1.name), ID: \(student1.studentID), Major: \(student1.major)")
print("Professor: \(professor.name), Faculty: \(professor.faculty)")
print("University: \(uni.name), Location: \(uni.location)")
