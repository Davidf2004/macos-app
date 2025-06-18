import SwiftUI

struct HistoryView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("Historial de Pedidos")
                .font(.largeTitle.bold())
            Text("Aun no Tienes ningun Pedido :( .")
                .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .foregroundColor(.white)
    }
}
