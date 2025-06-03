let library = Library()

let book1 = Book(id: "B001", title: "Swift Programming", author: "Apple")

library.addBook(book1)

do {
    let borrowedItem = try library.borrowItem(by: "B001")
    print("Borrowed item: \(borrowedItem.title)")

} catch {
    print("Error borrowing item: \(error)")
}

// intentionally testing if do catch shows error
do {
    let borrowedItem = try library.borrowItem(by: "B004")
    print("Borrowed item: \(borrowedItem.title)")

} catch {
    print("Error borrowing item: \(error)")
}
