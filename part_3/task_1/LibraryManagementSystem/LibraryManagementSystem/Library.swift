import Foundation

class Library {
    private var items: [String: Item] = [:]
    
    func addBook(_ book: Book) {
           items[book.id] = book
       }

   func borrowItem(by id: String) throws -> Item {
       guard let item = items[id] else {
           throw LibraryError.itemNotFound
       }

       guard var borrowableItem = item as? Borrowable else {
           throw LibraryError.itemNotBorrowable
       }

       guard !borrowableItem.isBorrowed else {
           throw LibraryError.alreadyBorrowed
       }

       borrowableItem.borrowDate = Date()
       borrowableItem.returnDate = Calendar.current.date(byAdding: .day, value: 14, to: Date())
       borrowableItem.isBorrowed = true

       if var book = item as? Book {
           book.borrowDate = borrowableItem.borrowDate
           book.returnDate = borrowableItem.returnDate
           book.isBorrowed = borrowableItem.isBorrowed
           items[id] = book
       }

       return item
   }
}
