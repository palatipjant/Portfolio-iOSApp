//
//  ContentView.swift
//  Portfolio-iOSApp
//
//  Created by Palatip Jantawong on 17/10/2566 BE.
//

import SwiftUI
import SwiftUIFontIcon

struct ContentView: View {
    
    var contact:Contact_link
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
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
                HStack{
                    ForEach(ContactData.data) { data in
                        IconButton(contact: data, isShowingDetailView: .constant(false))
                    }
                }
                VStack{
                    Button(action: {
                        
                    }, label: {
                        Text("About Me")
                            .font(.title3)
                            .fontWeight(.bold)
                    }).frame(width: 170, height: 45)
                        .background(.red)
                        .foregroundStyle(.white)
                        .clipShape(.capsule)
                }
            }
        }.ignoresSafeArea()
        
    }
}

#Preview {
    ContentView(contact: ContactData.sampledata, isShowingDetailView: .constant(false))
}
