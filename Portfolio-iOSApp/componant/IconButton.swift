//
//  IconButton.swift
//  Portfolio-iOSApp
//
//  Created by Palatip Jantawong on 18/10/2566 BE.
//

import SwiftUI

struct IconButton: View {
    
    var contact:Contact_link
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        Button(action: {
            isShowingSafariView = true
        }, label: {
            Image(contact.icon_name)
                .resizable()
                .frame(width: 25, height: 25)
        }).padding(.horizontal, 10)
            .padding(.bottom, 20)
            .sheet(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: contact.url) ?? URL(string: "www.apple.com")!)
            })
    }
}

#Preview {
    IconButton(contact: ContactData.sampledata, isShowingDetailView: .constant(false))
}
