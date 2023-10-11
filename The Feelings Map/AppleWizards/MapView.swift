//
//  MapView.swift
//  AppleWizards
//
//  Created by Dipanshu Modi on 10/10/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Map
        {
            Annotation("", coordinate: CLLocationCoordinate2D(latitude: -37.8193, longitude: 144.9521)) {
                Image("blue dot")
                    .resizable()
                    .frame(width: 40, height: 40)
            }
            Annotation("", coordinate: CLLocationCoordinate2D(latitude:  -37.80631, longitude: 144.96151)) {
                EmojiAnnotation(emoji: "Angry2")
            }
            Annotation("", coordinate: CLLocationCoordinate2D(latitude:  -37.8177, longitude: 144.9580)) {
                EmojiAnnotation(emoji: "Sad2")
            }
            Annotation("", coordinate: CLLocationCoordinate2D(latitude:  -37.8047, longitude: 144.9514)) {
                EmojiAnnotation(emoji: "Happy1")
            }
            Annotation("", coordinate: CLLocationCoordinate2D(latitude:  -37.80831, longitude: 144.9545)) {
                EmojiAnnotation(emoji: "Frustrated1")
            }
            Annotation("", coordinate: CLLocationCoordinate2D(latitude:  -37.8131, longitude: 144.9345)) {
                EmojiAnnotation(emoji: "Sick3")
            }
            Annotation("", coordinate: CLLocationCoordinate2D(latitude:  -37.82897, longitude: 144.95099)) {
                EmojiAnnotation(emoji: "Angry3")
            }
            Annotation("", coordinate: CLLocationCoordinate2D(latitude:  -37.82767, longitude: 144.94695)) {
                EmojiAnnotation(emoji: "Sad3")
            }
            Annotation("", coordinate: CLLocationCoordinate2D(latitude:  -37.81791, longitude: 144.94687)) {
                EmojiAnnotation(emoji: "Happy3")
            }
            Annotation("", coordinate: CLLocationCoordinate2D(latitude:  -37.83211, longitude: 144.96408)) {
                EmojiAnnotation(emoji: "Sad3")
            }
//            Annotation("", coordinate: CLLocationCoordinate2D(latitude:  -37.8233, longitude: 144.9585)) {
//                EmojiAnnotation(emoji: "Happy2")
//            }
            
        }
        .mapControlVisibility(.hidden)
    }
}

struct EmojiAnnotation: View {
    let emoji: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .fill(Color.white)
                .opacity(0)
            Image(emoji)
                .resizable()
                .frame(width: 50, height: 50)
        }
    }
}

