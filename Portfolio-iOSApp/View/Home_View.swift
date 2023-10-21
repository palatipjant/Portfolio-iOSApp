//
//  ContentView.swift
//  Portfolio-iOSApp
//
//  Created by Palatip Jantawong on 17/10/2566 BE.
//

import SwiftUI
import SwiftUIFontIcon

struct Home_View: View {
    
    var contact:Contact_link
    @Environment(\.colorScheme) var colorScheme
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    @State var showAboutme = false
    @State var showWorks = false
    @State var showSpeaker = false
    
    var body: some View {
        ZStack{
//            Image("home_bg")
//                .resizable()
//                .scaledToFill()
            VStack{
                Image("profile_circle")
                Text("Palatip Jantawong")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(10)
                HStack{
                    if colorScheme == .dark{
                        ForEach(ContactData.data) { data in
                            IconButton(contact: data, isShowingDetailView: .constant(false))
                        }
                    } else {
                        ForEach(ContactData.data_dark) { data in
                            IconButton(contact: data, isShowingDetailView: .constant(false))
                        }
                    }
                }
            }
        }.ignoresSafeArea()
    }
}

#Preview {
    Home_View(contact: ContactData.sampledata, isShowingDetailView: .constant(false))
}
