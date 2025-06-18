import SwiftUI

struct RestaurantListView: View {
    @StateObject private var viewModel = RestaurantViewModel()
    @State private var selectedFilter = "Todos"
    @State private var searchText = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("La Salle Foods")
                .font(.system(size: 32, weight: .heavy, design: .rounded))
                .foregroundColor(.green)
                .padding(.top, 20)
                .padding(.horizontal)


            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                TextField("Buscar restaurantes...", text: $searchText)
                    .textFieldStyle(PlainTextFieldStyle())
            }
            .padding(12)
            .background(Color.gray.opacity(0.15))
            .cornerRadius(12)
            .padding(.horizontal)
            .padding(.top)


            FilterBarView(selectedFilter: $selectedFilter)
                .onChange(of: selectedFilter) { newValue in
                    viewModel.filter(by: newValue)
                }

            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(viewModel.filteredRestaurants.filter {
                        searchText.isEmpty || $0.name.lowercased().contains(searchText.lowercased())
                    }) { restaurant in
                        RestaurantCardView(restaurant: restaurant)
                            .padding(.horizontal)
                    }
                }
                .padding(.top)
            }
        }
        .onAppear {
            viewModel.load()
        }
    }
}

