import Foundation

let books: [[String: Any]] = [
    ["title": "Swift Fundamentals", "author": "John Doe", "year": 2015, "price": 40, "genre": ["Programming", "Education"]],
    ["title": "The Great Gatsby", "author": "F. Scott Fitzgerald", "year": 1925, "price": 15, "genre": ["Classic", "Drama"]],
    ["title": "Game of Thrones", "author": "George R. R. Martin", "year": 1996, "price": 30, "genre": ["Fantasy", "Epic"]],
    ["title": "Big Data, Big Dupe", "author": "Stephen Few", "year": 2018, "price": 25, "genre": ["Technology", "Non-Fiction"]],
    ["title": "To Kill a Mockingbird", "author": "Harper Lee", "year": 1960, "price": 20, "genre": ["Classic", "Drama"]]
]

let discountedPrices = books.compactMap { book in
    if let price = book["price"] as? Double ?? (book["price"] as? Int).map(Double.init) {
        return price * 0.9
    }
    return nil
}

let booksPostedAfter2000: [String] = books.compactMap { book in
    if let year = book["year"] as? Int, year > 2000,
       let title = book["title"] as? String {
        return title
    }
    return nil
}

let allGenres: Set<String> = Set(
    books.flatMap { $0["genre"] as? [String] ?? [] }
)

let totalCost: Int = books.reduce(0) { sum, book in
    sum + (book["price"] as? Int ?? 0)
}

print("Discounted prices: \(discountedPrices)")
print("Books posted after 2000: \(booksPostedAfter2000)")
print("All genres: \(allGenres)")
print("Total cost: \(totalCost)")
