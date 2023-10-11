//
//  StatisticsOverlayView.swift
//  AppleWizards
//
//  Created by Dipanshu Modi on 10/10/2023.
//

import Foundation
import SwiftUI

struct StatisticsOverlayView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 24, style: .continuous)
                .frame(width:370, height:50)
                .foregroundColor(.black).opacity(0.1)
                .aspectRatio(1.618, contentMode: .fit)
            HStack{
                Image("Angry1")
                    .resizable()
                    .frame(width:30, height: 30)
                Text("2")
                    .kerning(10)
                Image("Happy1")
                    .resizable()
                    .frame(width:30, height:30)
                Text("3")
                    .kerning(10)
                Image("Sick1")
                    .resizable()
                    .frame(width:30, height:30)
                Text("1")
                    .kerning(10)
                Image("Sad1")
                    .resizable()
                    .frame(width:30, height:30)
                Text("3")
                    .kerning(10)
                Image("Frustrated1")
                    .resizable()
                    .frame(width:30, height:30)
                Text("1")
                    .kerning(0)
            }
        }
    }
}


#Preview {
    StatisticsOverlayView()
}
