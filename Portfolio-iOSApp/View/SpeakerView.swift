//
//  SpeakerView.swift
//  Portfolio-iOSApp
//
//  Created by Palatip Jantawong on 21/10/2566 BE.
//

import SwiftUI

struct SpeakerView: View {
    
    @State private var isShowingSafariView = false
    var isPreview: Bool = false
    @Binding var showSpeaker:Bool
    
    var body: some View {
        NavigationView {
            ScrollView{
                Spacer()
                ForEach(Speakers.speak_data) { data in
                    VStack{
                        Image(data.image)
                            .resizable()
                            .frame(width: 317, height: 257)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(color: Color(.label).opacity(0.2), radius: 10)
                            .padding(.bottom)
                        VStack(alignment: .trailing) {
                            Text(data.category.uppercased())
                                .font(.headline)
                                .foregroundColor(.gray)
                                .frame(width: 310, alignment: .leading)
                            Text(data.heading)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                                .lineLimit(3)
                                .frame(width: 310, alignment: .leading)
                            Text(data.author.uppercased())
                                .font(.caption)
                                .foregroundColor(.gray)
                                .frame(width: 310, alignment: .leading)
                            SpeakerButton(speaker: data, isShowingDetailView: .constant(false))
                        }
                    }
                        .padding()
                }
            }.scrollIndicators(.never)
                .navigationTitle("🎤 Speaker / Hosting")
//                .navigationBarItems(trailing: Button(action: {
//                    showSpeaker = false
//                                }) {
//                                    Text("Done").bold()
//                                        .foregroundStyle(Color(.label))
//                                })
                .padding(.top)
        }
    }
}

#Preview {
    SpeakerView(isPreview: true, showSpeaker: .constant(false))
}
