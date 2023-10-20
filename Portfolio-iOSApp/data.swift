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

struct Skill: Hashable, Identifiable{
    let id = UUID()
    let icon: String
    let skill_name: String
}

struct About_me {
    static let about_des1 = "      a Computer Science student at Bangkok University with three years of experience. I'm passionate about becoming an iOS mobile developer and currently working on diverse projects, including my own iOS app, showcasing skills in Swift, SwiftUI, Python, HTML, and CSS, along with design proficiency in tools like Figma and Adobe software."
    
    static let about_des2 = "      I'm actively seeking an iOS development internship to further my knowledge and gain practical experience in crafting exceptional user interfaces and writing efficient code, aiming to contribute significantly to the iOS app development landscape."
    
    static let skill_data = [
        Skill(icon: "swift", skill_name: "Swift"),
        Skill(icon: "swiftui", skill_name: "SwiftUI"),
        Skill(icon: "python", skill_name: "Python"),
        Skill(icon: "java", skill_name: "Java"),
        Skill(icon: "html", skill_name: "HTML"),
        Skill(icon: "css", skill_name: "CSS"),
        Skill(icon: "figma", skill_name: "Figma"),
        Skill(icon: "photoshop", skill_name: "Photoshop"),
        Skill(icon: "illus", skill_name: "Illustrator"),
        Skill(icon: "premiere", skill_name: "Premiere-Pro"),
        Skill(icon: "azure", skill_name: "Azure"),
        Skill(icon: "gcp", skill_name: "GCP")
    ]
}

struct Work: Hashable, Identifiable{
    let id = UUID()
    let image: String
    let category: String
    let heading: String
    let author: String
    let url: String
    
}

struct Works {
    static let works_sample = Work(image: "portfolio-app", category: "Mobile", heading: "Portfolio iOS App", author: "Palatip Jantawong", url: "https://github.com/palatipjant/Portfolio-iOSApp")
    
    static let works_data = [
        Work(image: "portfolio-app", category: "Mobile", heading: "Portfolio iOS App", author: "Palatip Jantawong", url: "https://github.com/palatipjant/Portfolio-iOSApp"),
        Work(image: "apple_framework", category: "Mobile", heading: "Apple Frameworks App", author: "Palatip Jantawong", url: "https://github.com/palatipjant/Apple-Framework-App"),
        Work(image: "meditation_app", category: "Mobile", heading: "Meditation App", author: "Palatip Jantawong",url: "https://github.com/palatipjant/Meditation-App"),
        Work(image: "design_carbon_offset", category: "Design", heading: "Carbon Offset Platform", author: "Palatip Jantawong", url: "https://dribbble.com/shots/21835307-Carbon-Offset-platform-website"),
        Work(image: "design_bu_mkp", category: "Design", heading: "BU Marketplace", author: "Palatip Jantawong", url: "www.palatip.com"),
        Work(image: "design_toret", category: "Design", heading: "Toret Car fo rent", author: "Palatip Jantawong", url: "www.palatip.com"),
        Work(image: "python-100-days", category: "Software & Application", heading: "100 Days of Code The Complete Python Pro Bootcamp", author: "Palatip Jantawong", url: "https://github.com/palatipjant/100-Days-of-Code-The-Complete-Python-Pro-Bootcamp"),
        Work(image: "doublej", category: "Software & Application", heading: "DoubleJ - POS & Mech", author: "Palatip Jantawong", url: "https://github.com/palatipjant/DoubleJ"),
        Work(image: "peace-tiktok", category: "It's fye", heading: "peace begins with a smile -", author: "Palatip Jantawong", url: "https://www.tiktok.com/@palatipjant/video/7228149032470793477"),
        Work(image: "20facts", category: "It's fye", heading: "จุดเริ่มต้น | It's fye Ep.0", author: "Palatip Jantawong", url: "https://www.youtube.com/@Itsfye"),
        Work(image: "portfolio-website", category: "Website", heading: "Portfolio Website", author: "Palatip Jantawong", url: "https://github.com/palatipjant/portfolio-website"),
        Work(image: "cereal-app", category: "Software & Application", heading: "Cereal Application", author: "Palatip Jantawong", url: "https://github.com/palatipjant/Cereal-Application"),
    ]
}
