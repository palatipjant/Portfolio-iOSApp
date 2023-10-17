//
//  ContentView.swift
//  Portfolio-iOSApp
//
//  Created by Palatip Jantawong on 17/10/2566 BE.
//

import SwiftUI
import SwiftUIFontIcon

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical){
            ZStack{
                Image("home_bg")
                    .resizable()
                    .scaledToFit()
                VStack{
                    Image("profile_circle")
                        .padding()
                    Text("Palatip Jantawong")
                        .font(.title)
                        .fontWeight(.heavy)
                        .padding()
                    HStack{
                        Button(action: {
                            
                        }, label: {
                            FontIcon.text(.materialIcon(code: .apps),fontsize: 35)
                        })
                        Button(action: {
                            
                        }, label: {
                            FontIcon.text(.materialIcon(code: .apps),fontsize: 35)
                        })
                        Button(action: {
                            
                        }, label: {
                            FontIcon.text(.materialIcon(code: .apps),fontsize: 35)
                        })
                        Button(action: {
                            
                        }, label: {
                            FontIcon.text(.materialIcon(code: .apps),fontsize: 35)
                        })
                        Button(action: {
                            
                        }, label: {
                            FontIcon.text(.materialIcon(code: .apps),fontsize: 35)
                        })
                    }
                    .padding(.bottom)
                    Button(action: {
                        
                    }, label: {
                        Text("Contact Me")
                            .font(.title3)
                            .fontWeight(.semibold)
                    }).frame(width: 160, height: 45)
                        .foregroundStyle(.white)
                        .background(Color("lightred"))
                        .clipShape(.capsule)
                }.foregroundStyle(.white)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
