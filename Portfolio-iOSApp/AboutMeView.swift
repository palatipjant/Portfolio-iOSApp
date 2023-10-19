//
//  BottomView.swift
//  Portfolio-iOSApp
//
//  Created by Palatip Jantawong on 19/10/2566 BE.
//

import SwiftUI

struct AboutMeView: View {
    var isPreview: Bool = false
    @Binding var showAboutme:Bool
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Spacer()
                    Image("about_me")
                        .resizable()
                        .frame(width: 183, height: 183)
                        .padding(.vertical, 15)
                    VStack{
                        Text("👋 I'm Fee (Palatip Jantawong)")
                            .frame(maxWidth: .infinity)
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundStyle(Color("bg_main"))
                            .padding(.vertical, 10)
                        Group {
                            Text(About_me.about_des1)
                            Text(About_me.about_des2)
                                .padding(.vertical,10)
                        }
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity)
                            .font(.system(size: 20, weight: .regular))
                            .foregroundStyle(Color("bg_main"))
                            .padding(.horizontal, 18)
                        Text("🔥 Skill")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.horizontal)
                        
                    }
                }
            }.navigationTitle("🙋🏻‍♀️ About Me")
                .navigationBarItems(trailing: Button(action: {
                                    showAboutme = false
                                }) {
                                    Text("Done").bold()
                                })
        }
    }
}

#Preview {
    AboutMeView(isPreview: true, showAboutme: .constant(true))
}
