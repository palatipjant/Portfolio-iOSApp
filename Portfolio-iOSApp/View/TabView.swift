//
//  TabView.swift
//  Portfolio-iOSApp
//
//  Created by Palatip Jantawong on 21/10/2566 BE.
//

import SwiftUI

struct StartPoint: View {
    var body: some View {
            TabView {
                Home_View(contact: ContactData.sampledata, isShowingDetailView: .constant(false))
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                AboutMeView(showAboutme: .constant(false))
                    .tabItem {
                        Label("Search", systemImage: "person.fill")
                    }
                CardView(showWorks: .constant(false))
                    .tabItem {
                        Label("Works", systemImage: "desktopcomputer")
                    }
                SpeakerView(showSpeaker: .constant(false))
                    .tabItem {
                        Label("Works", systemImage: "music.mic")
                    }
                BlogView(showBlogs: .constant(false))
                    .tabItem {
                        Label("Blog", systemImage: "doc.text.image.fill")
                    }
            }
    }
}

#Preview {
    StartPoint()
}
