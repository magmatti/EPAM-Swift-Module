let admin = AdminUser()

admin.registerUser(username: "alice", email: "alice@gmail.com", password: "pass123")
admin.registerUser(username: "bob", email: "bob@gmail.com", password: "secure456")
admin.login(username: "alice", password: "pass123")

print("User count:", admin.userCount)
print("All users:", admin.listAllUsers())

admin.removeUser(username: "bob")

print("Users after deletion:", admin.userCount)
print("List of users after deletion:", admin.listAllUsers())
