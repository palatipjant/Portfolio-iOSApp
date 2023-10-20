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
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    @State var showAboutme = false
    @State var showWorks = false
    
    var body: some View {
        ZStack{
            Image("home_bg")
                .resizable()
                .scaledToFill()
            VStack{
                Image("profile_circle")
                Text("Palatip Jantawong")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(10)
                    .foregroundStyle(.white)
                HStack{
                    ForEach(ContactData.data) { data in
                        IconButton(contact: data, isShowingDetailView: .constant(false))
                    }
                }
                VStack{
                    Group{
                        Button(action: {
                            showAboutme.toggle()
                        }, label: {
                            Text("About Me")
                                .font(.title3)
                                .fontWeight(.bold)
                        }).sheet(isPresented: $showAboutme, content: {
                                AboutMeView(isPreview: true, showAboutme: $showAboutme)
                            })
                        Button(action: {
                            showAboutme.toggle()
                        }, label: {
                            Text("Experience")
                                .font(.title3)
                                .fontWeight(.bold)
                        }).sheet(isPresented: $showAboutme, content: {
                                AboutMeView(isPreview: true, showAboutme: $showAboutme)
                            })
                        Button(action: {
                            showWorks.toggle()
                        }, label: {
                            Text("Recent Work")
                                .font(.title3)
                                .fontWeight(.bold)
                        }).sheet(isPresented: $showWorks, content: {
                                CardView(isPreview: true, showWorks: $showWorks)
                            })
                    }.frame(width: 170, height: 45)
                        .background(Color("lightred"))
                        .foregroundStyle(.white)
                        .clipShape(.capsule)
                        .padding(.bottom, 10)
                }
            }
        }.ignoresSafeArea()
        
    }
}

#Preview {
    Home_View(contact: ContactData.sampledata, isShowingDetailView: .constant(false))
}
