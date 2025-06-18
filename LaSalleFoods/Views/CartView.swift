import SwiftUI

struct CartView: View {
    @StateObject private var viewModel = CartViewModel()

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Carrito")
                .font(.largeTitle)
                .bold()

            ScrollView {
                LazyVStack(alignment: .leading, spacing: 12) {
                    ForEach(viewModel.items) { item in
                        HStack(spacing: 16) {
                            AsyncImage(url: URL(string: item.image)) { image in
                                image.resizable()
                            } placeholder: {
                                Color.gray
                            }
                            .frame(width: 80, height: 80)
                            .cornerRadius(10)

                            VStack(alignment: .leading) {
                                Text("ID Restaurante: \(item.restaurant)")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                Text("Cantidad: \(item.quantity)")
                                    .foregroundColor(.gray)
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
        .padding()
        .onAppear { viewModel.load() }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .foregroundColor(.white)
    }
}