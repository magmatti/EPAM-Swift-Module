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
