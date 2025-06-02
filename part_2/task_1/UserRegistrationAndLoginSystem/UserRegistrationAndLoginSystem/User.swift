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
