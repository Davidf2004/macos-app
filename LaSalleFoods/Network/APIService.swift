import Foundation

class APIService {
    private let baseURL = "https://lasallefoods-rfhs3.ondigitalocean.app"

    // restaurantes con async/await
    func fetchRestaurants() async throws -> [Restaurant] {
        guard let url = URL(string: "\(baseURL)/restaurants") else {
            throw URLError(.badURL)
        }

        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([Restaurant].self, from: data)
    }

    // carrito con async/await
    func fetchCartItems() async throws -> [CartItem] {
        guard let url = URL(string: "\(baseURL)/cartItems") else {
            throw URLError(.badURL)
        }

        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([CartItem].self, from: data)
    }
}

