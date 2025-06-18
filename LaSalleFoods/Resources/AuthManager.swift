import Foundation
import SwiftUI

class AuthManager: ObservableObject {
    @Published var isLoggedIn: Bool = false

    func login(email: String, password: String) -> Bool {
        if email == "admin@lasalle.mx" && password == "123456" {
            isLoggedIn = true
            return true
        }
        return false
    }
}

