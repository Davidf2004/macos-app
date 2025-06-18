import Foundation

class CartViewModel: ObservableObject {
    @Published var items: [CartItem] = []

    private let apiService = APIService()

    func load() {
        Task {
            do {
                let fetchedItems = try await apiService.fetchCartItems()
                DispatchQueue.main.async {
                    self.items = fetchedItems
                }
            } catch {
                print(" Error al cargar cart items:", error)
            }
        }
    }
}

