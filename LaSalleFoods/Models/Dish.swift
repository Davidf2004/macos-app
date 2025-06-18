import Foundation

struct Dish: Identifiable, Codable {
    let id: UUID
    let name: String
    let description: String
    let price: Double
    let imageURL: String
}
