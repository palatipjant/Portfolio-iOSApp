//
//  contact_link.swift
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
