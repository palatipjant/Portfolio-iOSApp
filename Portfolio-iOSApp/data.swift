//
//  data.swift
//  Portfolio-iOSApp
//
//  Created by Palatip Jantawong on 18/10/2566 BE.
//

import Foundation

struct Contact_link: Hashable, Identifiable {
    let id = UUID()
    let icon_name: String
    let url: String
}

struct ContactData {
    static let sampledata = Contact_link(icon_name: "github_icon", url: "https://github.com/palatipjant")
    
    static let data = [
        Contact_link(icon_name: "github_icon", url: "https://github.com/palatipjant"),
        Contact_link(icon_name: "linkedin_icon", url: "https://www.linkedin.com/in/palatip-jantawong/"),
        Contact_link(icon_name: "instagram_icon", url: "https://www.instagram.com/whos.fee/"),
        Contact_link(icon_name: "twitter_icon", url: "https://twitter.com/palatipjant"),
        Contact_link(icon_name: "facebook_icon", url: "https://www.facebook.com/palatipjant"),
        Contact_link(icon_name: "medium_icon", url: "https://medium.com/@palatipjant")
    ]
}

struct About_me {
    static let about_des1 = "      a Computer Science student at Bangkok University with three years of experience. I'm passionate about becoming an iOS mobile developer and currently working on diverse projects, including my own iOS app, showcasing skills in Swift, SwiftUI, Python, HTML, and CSS, along with design proficiency in tools like Figma and Adobe software."
    
    static let about_des2 = "      I'm actively seeking an iOS development internship to further my knowledge and gain practical experience in crafting exceptional user interfaces and writing efficient code, aiming to contribute significantly to the iOS app development landscape."
}
