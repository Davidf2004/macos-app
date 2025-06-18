import SwiftUI

@main
struct LaSalleFoodsApp: App {
    @StateObject var authManager = AuthManager()

    var body: some Scene {
        WindowGroup {
            if authManager.isLoggedIn {
                ContentView()
                    .environmentObject(authManager)
            } else {
                LoginView()
                    .environmentObject(authManager)
            }
        }
    }
}



