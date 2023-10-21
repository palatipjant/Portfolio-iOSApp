//
//  SpeakerButton.swift
//  Portfolio-iOSApp
//
//  Created by Palatip Jantawong on 21/10/2566 BE.
//

import SwiftUI

struct SpeakerButton: View {
    
    var speaker:Speaker
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        Button(action: {
            isShowingSafariView = true
        }, label: {
            HStack{
                Text("Learn More")
                    .font(.headline)
                    .fontWeight(.semibold)
                Image(systemName: "arrow.right")
            }.frame(width: 150, height: 45)
                .background(Color("lightred"))
                .foregroundStyle(.white)
                .clipShape(.capsule)
                .padding(.bottom)
        }).sheet(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: speaker.url) ?? URL(string: "www.palatip.com")!)
            })
    }
}

#Preview {
    SpeakerButton(speaker: Speakers.sample_data, isShowingDetailView: .constant(false))
}
