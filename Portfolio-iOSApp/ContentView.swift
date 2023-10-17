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
        ZStack{
            Image("home_bg")
                .resizable()
                .scaledToFill()
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
                VStack{
                    Button(action: {
                        
                    }, label: {
                        Text("About Me")
                            .font(.title3)
                            .fontWeight(.semibold)
                    }).frame(width: 170, height: 45)
                        .foregroundStyle(.white)
                        .background(Color("lightred"))
                        .clipShape(.capsule)
                        .padding(.bottom)
                    Button(action: {
                        
                    }, label: {
                        Text("Experience")
                            .font(.title3)
                            .fontWeight(.semibold)
                    }).frame(width: 170, height: 45)
                        .foregroundStyle(.white)
                        .background(Color("lightred"))
                        .clipShape(.capsule)
                        .padding(.bottom)
                    Button(action: {
                        
                    }, label: {
                        Text("Work / Projects")
                            .font(.title3)
                            .fontWeight(.semibold)
                    }).frame(width: 170, height: 45)
                        .foregroundStyle(.white)
                        .background(Color("lightred"))
                        .clipShape(.capsule)
                        .padding(.bottom)
                    Button(action: {
                        
                    }, label: {
                        Text("Blog")
                            .font(.title3)
                            .fontWeight(.semibold)
                    }).frame(width: 170, height: 45)
                        .foregroundStyle(.white)
                        .background(Color("lightred"))
                        .clipShape(.capsule)
                    
                }
            }.foregroundStyle(.white)
        }.background(Color("bg_main"))
    }
}

#Preview {
    ContentView()
}
