//
//  EmojiListView.swift
//  AppleWizards
//
//  Created by Dipanshu Modi on 10/10/2023.
//

import SwiftUI
struct EmojiListView: View {
//    @State var userEmojis: Array<String>
    @State private var isSheetPresented = false
    let heights = stride(from: 0.4, through: 1.0, by: 0.1).map { PresentationDetent.fraction($0) }
    
    var body: some View {
        Button(action: {
                    isSheetPresented.toggle()
        }) {
            VStack {
                ZStack{
                    // Spacer()
                    // sheet button was coming at the middle by default so to set it to the bottom I'm using spacer method
                        Divider().background().opacity(0) // didnt need this but then somehow it was making the whole sheet clickable so using it hahaha...
                        Rectangle()
                                    .frame(width: 50, height: 6)
                                    .foregroundColor(Color.gray).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                                    .cornerRadius(2)
                }
                
//                            GeometryReader { geometry in
//                                geometry.size.width / 2
//                            } to check the width and height
                        Text("Share your feelings!")
                
                    .font(.system(size: 22, weight: .medium)) // just chose something which makes it bold and can change it later
                    .padding()
                
            }
        }
        .sheet(isPresented: $isSheetPresented)
        {
            EmojiSheetView(isSheetPresented: $isSheetPresented )
                .presentationDetents([.height(300)])
                
            //as the sheet is taking full screen by default ...so to change it I'm trying something
//                .frame(height: 200) // it sucks and not working the way i wanted it to :(
        }
    }
}

struct EmojiSheetView: View {
    @Binding var isSheetPresented: Bool // this binding is for toggling purpose so we're making it boolean
    
    var body: some View {
        VStack{
            EmojiGridView()
            .navigationTitle("Feelings List") // idk yet why this didnt populate on the top of the sheet as expected
            .navigationBarItems(trailing: Button("Close") {
                isSheetPresented.toggle()
            })
        }
        .onTapGesture {
            // Dismiss the sheet when tapped anywhere in the sheet
            isSheetPresented.toggle()
        }
    }
}

#Preview {
    EmojiListView()
}
