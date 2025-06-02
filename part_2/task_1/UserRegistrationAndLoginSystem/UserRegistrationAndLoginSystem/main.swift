import Foundation

struct User {
    let username: String
    let email: String
    let passwordHash: String

    init(username: String, email: String, password: String) {
        self.username = username
        self.email = email
        self.passwordHash = User.simpleHash(password)
    }

    // method to simulate hashing password
    static func simpleHash(_ password: String) -> String {
        return String(password.reversed()) + "\(password.count * 31)"
    }

    
    func verify(password: String) -> Bool {
        return User.simpleHash(password) == self.passwordHash
    }
}

class UserManager {
    var users: [String: User] = [:]

    var userCount: Int {
        return users.count
    }

    func registerUser(username: String, email: String, password: String) -> Bool {
        guard users[username] == nil else {
            print("Username already exists.")
            return false
        }
        
        let user = User(username: username, email: email, password: password)
        users[username] = user
        
        print("User '\(username)' registered.")
        
        return true
    }

    func login(username: String, password: String) -> Bool {
        guard let user = users[username], user.verify(password: password) else {
            print("Login failed for user '\(username)'.")
            return false
        }
        
        print("User '\(username)' logged in successfully.")
        
        return true
    }

    func removeUser(username: String) -> Bool {
        if users.removeValue(forKey: username) != nil {
            print("User '\(username)' removed.")
            return true
        }
        
        print("User '\(username)' not found.")
        
        return false
    }
}

class AdminUser: UserManager {
    override init() {
        super.init()
        print("Admin initialized")
    }

    func listAllUsers() -> [String] {
        return Array(users.keys)
    }

    deinit {
        print("Admin instance deleted")
    }
}

let admin = AdminUser()

admin.registerUser(username: "alice", email: "alice@gmail.com", password: "pass123")
admin.registerUser(username: "bob", email: "bob@gmail.com", password: "secure456")
admin.login(username: "alice", password: "pass123")

print("User count:", admin.userCount)
print("All users:", admin.listAllUsers())

admin.removeUser(username: "bob")

print("Users after deletion:", admin.userCount)
print("List of users after deletion:", admin.listAllUsers())
