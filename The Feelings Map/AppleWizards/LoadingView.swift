//
//  LoadingView.swift
//  AppleWizards
//
//  Created by Dipanshu Modi on 10/10/2023.
//
import SwiftUI
import AVKit
//
struct LoadingView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    @State var player = AVPlayer(url:Bundle.main.url(forResource:"LoadingScreen",withExtension: "mov")!)
    @State var isPlaying: Bool = false
    
    
    var body: some View {
        
        
//        let avPlayer = AVPlayer(url:  Bundle.main.url(forResource: "Feelings Map-2", withExtension: "mov")!)
        
        if isActive{
            CommunityGuidelinesView()
        }else {
            
            VStack  {

                VideoPlayer(player:player)
                    .ignoresSafeArea()
                    .onAppear(){player.play()}
                
            }
            .onAppear(){
                withAnimation(.easeIn(duration: 1.2))
                {
                    self.size = 0.9
                    self.opacity = 1.0
                }
            }
            
            
            .onAppear
                {
                DispatchQueue.main.asyncAfter (deadline: .now() + 4.0){
                    self.isActive = true
                }
            }
        }
    }
    
}


#Preview {
    LoadingView()
}
//
//  LoadingScreen.swift
//  Loading Screen Example

//  Created by Emmanuel Julius on 30/9/2023.
//
//
//import SwiftUI
//import AVKit
//
//
//struct LoadingScreen: View {
//    @State private var isActive = false
//    @State private var size = 0.8
//    @State private var opacity = 0.5
//    @State var player = AVPlayer(url:Bundle.main.url(forResource:"LoadingScreen",withExtension: "mov")!)
//    @State var isPlaying: Bool = false
//
//
//    var body: some View {
//
//
////        let avPlayer = AVPlayer(url:  Bundle.main.url(forResource: "Feelings Map-2", withExtension: "mov")!)
//
//        if isActive{
//            CommunityGuidelines()
//        }else {
//
//            VStack  {
//
//                VideoPlayer(player:player)
//                    .ignoresSafeArea()
//                    .onAppear(){player.play()}
//
//            }
//            .onAppear(){
//                withAnimation(.easeIn(duration: 1.2))
//                {
//                    self.size = 0.9
//                    self.opacity = 1.0
//                }
//            }
//
//
//            .onAppear
//                {
//                DispatchQueue.main.asyncAfter (deadline: .now() + 4.0){
//                    self.isActive = true
//                }
//            }
//        }
//    }
//}
//
    
//    #Preview {
//        LoadingScreen()
//    }
