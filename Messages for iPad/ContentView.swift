import SwiftUI
import BetterSafariView
 

struct ContentView: View {
    @State private var presentingSafariView = false
    var body: some View {
        let screen = UIScreen.main.bounds
        let screenWidth = screen.size.width
        let screenHeight = screen.size.height
        
        Button(action: {
            self.presentingSafariView = true
        }) {
            Text("Buy me a Coffee ☕ !!")
        }
        .safariView(isPresented: $presentingSafariView) {
            SafariView(
                url: URL(string: "https://www.buymeacoffee.com/nsdevaraj")!,
                configuration: SafariView.Configuration(
                    entersReaderIfAvailable: false,
                    barCollapsingEnabled: true
                )
            )
            .preferredBarAccentColor(.clear)
            .preferredControlAccentColor(.accentColor)
            .dismissButtonStyle(.done)
        }
        SafariView(
            //http://outlook.office.com/mail/ https://messages.google.com/web/
            url: URL(string: "https://messages.google.com/web/")!,
            configuration: SafariView.Configuration(
                entersReaderIfAvailable: false,
                barCollapsingEnabled: true
            )
        )
        .preferredBarAccentColor(.clear)
        .preferredControlAccentColor(.accentColor)
        .dismissButtonStyle(.done)
        .offset(x: 0, y: -70) //70 normal value, 80 for outlook
        .frame(width: screenWidth, height: screenHeight+88)
    }
    
}
