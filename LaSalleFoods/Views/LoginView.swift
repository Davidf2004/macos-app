
import SwiftUI

struct LoginView: View {
    @EnvironmentObject var authManager: AuthManager
    @State private var email = ""
    @State private var password = ""
    @State private var errorMessage = ""

    var body: some View {
        ZStack {
            Image("LoginBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            Color.black.opacity(0.35)
                .ignoresSafeArea()

            VStack {
                VStack(spacing: 20) {
                    Text("Iniciar sesión")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)

                    VStack(spacing: 14) {
                        emailField
                        passwordField
                    }

                    if !errorMessage.isEmpty {
                        Text(errorMessage)
                            .foregroundColor(.red)
                            .font(.caption)
                    }

                    Button(action: {
                        if authManager.login(email: email, password: password) {
                            errorMessage = ""
                        } else {
                            errorMessage = "Credenciales incorrectas"
                        }
                    }) {
                        Text("Entrar")
                            .bold()
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                    }

                    Text("¿Olvidaste tu contraseña?")
                        .font(.footnote)
                        .foregroundColor(.white.opacity(0.7))

                    Text("¿No tienes cuenta? Regístrate")
                        .font(.footnote)
                        .foregroundColor(.white.opacity(0.7))
                }
                .padding()
                .frame(width: 320)
                .background(Color.white.opacity(0.08))
                .cornerRadius(30)
                .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 5)
            }
        }
    }

    var emailField: some View {
        HStack {
            Image(systemName: "envelope")
                .foregroundColor(.gray)
            TextField("Correo electrónico", text: $email)
                .disableAutocorrection(true)
                .foregroundColor(.black)
        }
        .padding(.vertical, 10)
        .padding(.horizontal)
        .background(Color.white.opacity(0.05))
        .cornerRadius(8)
        .overlay(RoundedRectangle(cornerRadius: 8)
            .stroke(Color.white.opacity(0.2), lineWidth: 1))
    }

    var passwordField: some View {
        HStack {
            Image(systemName: "lock")
                .foregroundColor(.gray)
            SecureField("Contraseña", text: $password)
                .foregroundColor(.black)
        }
        .padding(.vertical, 10)
        .padding(.horizontal)
        .background(Color.white.opacity(0.05))
        .cornerRadius(8)
        .overlay(RoundedRectangle(cornerRadius: 8)
            .stroke(Color.white.opacity(0.2), lineWidth: 1))
    }
}

