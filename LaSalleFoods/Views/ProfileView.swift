import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Perfil del Usuario")
                .font(.largeTitle.bold())

            Text("Información de usuario, dirección, métodos de pago.")
                .foregroundColor(.gray)

            Divider()
                .padding(.horizontal)

            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 120, height: 120)
                .foregroundColor(.green)

            VStack(alignment: .leading, spacing: 12) {
                ProfileRow(title: "Nombre", value: "La Salle Foods")
                ProfileRow(title: "Correo", value: "admin@lasalle.mx")
                ProfileRow(title: "Rol", value: "Administrador del sistema")
                ProfileRow(title: "Teléfono", value: "+52 477 123 4567")
            }
            .padding(.horizontal, 32)

            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .foregroundColor(.white)
    }
}

struct ProfileRow: View {
    let title: String
    let value: String

    var body: some View {
        HStack {
            Text("\(title):")
                .fontWeight(.semibold)
            Spacer()
            Text(value)
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    ProfileView()
}

