import Foundation

struct Restaurant: Identifiable, Codable {
    let id: String
    let name: String
    let category: String
    let imageName: String
    let estimatedTime: String
    let rating: Double
    let hasPromotion: Bool

    var imageURL: String {
        return imageName 
    }
}

