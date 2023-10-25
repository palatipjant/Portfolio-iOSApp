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
            
            VStack{
                Image("profile_circle")
                    .padding(.top)
                    .shadow(color: Color(.label).opacity(0.2), radius: 10)
                Text("Palatip Jantawong")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.top)
                Text("🟢 Status: Open for works")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color("status"))
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
                }.padding(22)
                GifImage("cover_gif")
                                .frame(width: 320, height: 180)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
            }
        }
    }
}

#Preview {
    Home_View(contact: ContactData.sampledata, isShowingDetailView: .constant(false))
}
