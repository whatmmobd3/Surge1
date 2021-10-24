
import SwiftUI

@main
struct Surge1App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AppValue())
        }
    }
}
