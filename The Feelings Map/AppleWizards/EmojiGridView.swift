import SwiftUI
import MapKit

struct EmojiGridView: View {
//    @Binding var userEmojis: Array<String>
//    var selectedEmoji = ""
    
    let columnLayout = Array(repeating: GridItem(.flexible()), count: 5)
    let emojiTypeNames = ["Angry", "Happy", "Sick", "Sad", "Frustrated"]
    let emojiCountPerT = 5

    var customEmojiData: [(String, [String])] {
        var data: [(String, [String])] = []
        
        for category in emojiTypeNames {
            var emojiNames: [String] = []
            for number in 1...emojiCountPerT {
                emojiNames.append("\(category)\(number)")
            }
            data.append((category, emojiNames))
        }
        return data
    }

    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(customEmojiData, id: \.0) { category, emojiNames in
                    HStack {
                        Text(category)
                            .font(.headline)
                        Spacer()
                    }
                    .padding(.top)
                    Divider()

                    LazyVGrid(columns: columnLayout, spacing: 10) {
                        ForEach(emojiNames, id: \.self) { emojiName in
                            Button {

                            action:
                                do {
                               // selectedEmoji = emojiName
//                                userEmojis.append(emojiName)
                            }
                            } label: {
                                Image(emojiName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                        }
                    }
                    .padding()
                }
            }
            .padding()
        }
        
//        // Display a message when an emoji is selected
//        if let selectedEmoji = selectedEmoji {
//            Text("Selected Emoji: \(selectedEmoji)")
//        }
    }
}

#Preview {
    EmojiGridView()
}

