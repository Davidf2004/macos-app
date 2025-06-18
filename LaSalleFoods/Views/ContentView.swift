import SwiftUI

enum SidebarSection: String, CaseIterable {
    case home = "Inicio"
    case profile = "Perfil"
    case cart = "Carrito"
    case history = "Historial"

    var icon: String {
        switch self {
        case .home: return "house"
        case .profile: return "person.crop.circle"
        case .cart: return "cart"
        case .history: return "clock.arrow.circlepath"
        }
    }
}

struct ContentView: View {
    @State private var selectedSection: SidebarSection = .home

    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 0) {
                Text("LaSalleFoods")
                    .font(.title2.bold())
                    .foregroundColor(.green)
                    .padding()
                    .padding(.top, 40)


                List {
                    ForEach(SidebarSection.allCases, id: \.self) { section in
                        Button(action: {
                            selectedSection = section
                        }) {
                            Label(section.rawValue, systemImage: section.icon)
                                .foregroundColor(selectedSection == section ? .black : .black)
                        }
                        .listRowBackground(Color.clear)
                    }
                }
                .listStyle(SidebarListStyle())
            }
            .frame(minWidth: 318, maxWidth: 300)
            .background(Color.orange)
            .ignoresSafeArea()

            Group {
                switch selectedSection {
                case .home:
                    RestaurantListView()
                case .profile:
                    ProfileView()
                case .cart:
                    CartView()
                case .history:
                    HistoryView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
