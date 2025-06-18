import SwiftUI

struct FilterBarView: View {
    @Binding var selectedFilter: String
    let options = ["Todos", "Menos de 30 min", "Ofertas", "Especiales"]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(options, id: \.self) { option in
                    Text(option)
                        .padding(.horizontal, 14)
                        .padding(.vertical, 8)
                        .background(selectedFilter == option ? Color.black : Color.gray.opacity(0.2))
                        .foregroundColor(selectedFilter == option ? .white : .primary)
                        .cornerRadius(20)
                        .onTapGesture {
                            selectedFilter = option
                        }
                }
            }
            .padding(.horizontal)
            .padding(.top)
        }
    }
}
