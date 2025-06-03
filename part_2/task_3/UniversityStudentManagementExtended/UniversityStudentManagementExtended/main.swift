let person = Person(name: "John", age: 20)
print("\(person.name), \(person.age) Is adult? \(person.isAdult)")
print(person.profileDescription)

let prof = Professor(name: "Dr. Smith", age: 45, faculty: "Engineering")
print(prof.fullTitle)
print("Professors count: \(Professor.professorCount)")

var student1: Student? = Student(name: "Alice", age: 19, studentID: "s123", major: "CS")
var student2 = Student(studentID: "s456", major: "Math")

student1?.advisor = prof
print(student1?.formattedID ?? "")
print("Students count: \(Student.studentCount)")

// testing weak reference deallocation
student1 = nil

let uni = University(name: "University of technology", location: "Cracow")
print(uni.description)
