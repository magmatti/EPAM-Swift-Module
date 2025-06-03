var school = School()

school.addPerson(School.Person(name: "John", role: .student))
school.addPerson(School.Person(name: "Jane", role: .student))
school.addPerson(School.Person(name: "Professor", role: .teacher))
school.addPerson(School.Person(name: "Dr. Smith", role: .teacher))
school.addPerson(School.Person(name: "Mr. Admin", role: .administrator))

print("Student count \(countStudents(in: school))")
print("Teacher count \(countTeachers(in: school))")
print("Administrator count \(countAdministrators(in: school))")
