//
//  BottomView.swift
//  Portfolio-iOSApp
//
//  Created by Palatip Jantawong on 19/10/2566 BE.
//

import SwiftUI

struct AboutMeView: View {
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var isPreview: Bool = false
    @Binding var showAboutme:Bool
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Spacer()
                    Image("about_me")
                        .resizable()
                        .frame(width: 100, height: 100)
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
                            .font(.system(size: 16, weight: .regular))
                            .foregroundStyle(Color("bg_main"))
                            .padding(.horizontal, 18)
                        Text("🔥 Skill")
                            .foregroundStyle(Color(.label))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.horizontal)
                        LazyVGrid(columns: columns){
                            ForEach(About_me.skill_data) { skill in
                                HStack{
                                    Image(skill.icon)
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        .padding(.vertical, 10)
                                    Text(skill.skill_name)
                                        .font(.system(size: 16, weight: .regular))
                                        .foregroundStyle(Color("bg_main"))
                                        .frame(width: 80, height: 40, alignment: .leading)
                                        .padding(.horizontal, 1)
                                        
                                }.frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.horizontal, 18)
                                    
                            }
                        }
                    }
                }
            }.navigationTitle("🙋🏻‍♀️ About Me")
                .navigationBarItems(trailing: Button(action: {
                                    showAboutme = false
                                }) {
                                    Text("Done").bold()
                                        .foregroundStyle(Color(.label))
                                })
        }
    }
}

#Preview {
    AboutMeView(isPreview: true, showAboutme: .constant(true))
}
