import Foundation

extension Borrowable {
    func isOverdue() -> Bool {
        guard let returnDate = returnDate else { return false }
        return Date() > returnDate
    }
    
    mutating func checkIn() {
        borrowDate = nil
        returnDate = nil
        isBorrowed = false
    }
}
