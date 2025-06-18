import SwiftUI

struct RestaurantCardView: View {
    
    let restaurant: Restaurant

    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            AsyncImage(url: URL(string: restaurant.imageURL)) { image in
                image.resizable()
            } placeholder: {
                Color.gray.opacity(0.2)
            }
            .frame(width: 100, height: 100)
            .cornerRadius(12)

            VStack(alignment: .leading, spacing: 6) {
                Text(restaurant.name)
                    .font(.headline)

                HStack {
                    Label(String(format: "%.1f", restaurant.rating), systemImage: "star.fill")
                        .font(.subheadline)
                        .foregroundColor(.yellow)
                    Text(restaurant.estimatedTime)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }

                Text(restaurant.category)
                    .font(.footnote)
                    .foregroundColor(.gray)

                if restaurant.hasPromotion {
                    Label("Promoción disponible", systemImage: "flame.fill")
                        .font(.caption)
                        .foregroundColor(.orange)
                }
            }

            Spacer()
        }
        .padding()
        .background(Color.green.opacity(0.2))
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.05), radius: 4, x: 0, y: 2)
    }
}
