import Foundation

struct CartItem: Identifiable, Codable {
    let id: String
    let restaurant: String
    let image: String
    let quantity: Int
}
