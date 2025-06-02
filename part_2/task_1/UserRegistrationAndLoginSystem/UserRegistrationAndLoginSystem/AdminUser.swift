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
