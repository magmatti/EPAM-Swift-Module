import Foundation

struct School {
    private var people: [Person] = []
    
    enum SchoolRole {
        case student
        case teacher
        case administrator
    }
    
    class Person {
        var name: String
        var role: SchoolRole
        
        init(name: String, role: SchoolRole) {
            self.name = name
            self.role = role
        }
    }
    
    mutating func addPerson(_ person: Person) {
        people.append(person)
    }
    
    subscript(role: SchoolRole) -> [Person] {
        people.filter { $0.role == role }
    }
}

func countStudents(in school: School) -> Int {
    return school[.student].count
}

func countTeachers(in school: School) -> Int {
    return school[.teacher].count
}

func countAdministrators(in school: School) -> Int {
    return school[.administrator].count
}
