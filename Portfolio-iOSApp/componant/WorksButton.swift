//
//  WorksButton.swift
//  Portfolio-iOSApp
//
//  Created by Palatip Jantawong on 20/10/2566 BE.
//

import SwiftUI

struct WorksButton: View {
    
    var work:work
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
            SafariView(url: URL(string: work.workURL) ?? URL(string: "www.apple.com")!)
            })
    }
}

#Preview {
    WorksButton(work: Mockdata.sampleWork, isShowingDetailView: .constant(false))
}
