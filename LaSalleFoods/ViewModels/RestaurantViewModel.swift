import Foundation

class RestaurantViewModel: ObservableObject {
    @Published var allRestaurants: [Restaurant] = []
    @Published var filteredRestaurants: [Restaurant] = []

    private let apiService = APIService()

    func load() {
        Task {
            do {
                let fetched = try await apiService.fetchRestaurants()
                DispatchQueue.main.async {
                    self.allRestaurants = fetched
                    self.filteredRestaurants = fetched
                }
            } catch {
                print("Error al cargar restaurantes:", error)
            }
        }
    }

    func filter(by option: String) {
        switch option {
        case "Todos":
            filteredRestaurants = allRestaurants
        case "Menos de 30 min":
            filteredRestaurants = allRestaurants.filter {
                $0.estimatedTime.contains("15") || $0.estimatedTime.contains("10")
            }
        case "Ofertas":
            filteredRestaurants = allRestaurants.filter { $0.hasPromotion }
        case "Especiales":
            filteredRestaurants = allRestaurants.filter { $0.rating >= 4.5 }
        default:
            filteredRestaurants = allRestaurants
        }
    }
}

