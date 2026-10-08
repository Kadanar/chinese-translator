import SwiftUI

@main
struct PhrasebookApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    private let hanzi = "你好，谢谢"

    private var pinyin: String {
        hanzi.applyingTransform(.mandarinToLatin, reverse: false) ?? "—"
    }

    var body: some View {
        VStack(spacing: 16) {
            Text(hanzi)
                .font(.system(size: 56))
            Text(pinyin)
                .font(.title2)
                .foregroundStyle(.secondary)
            Text("Сборка работает")
                .font(.headline)
                .padding(.top, 24)
        }
        .padding()
    }
}