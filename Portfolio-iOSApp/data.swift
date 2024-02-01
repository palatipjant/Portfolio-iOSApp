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
    
    static let data_dark = [
        Contact_link(icon_name: "github_d_icon", url: "https://github.com/palatipjant"),
        Contact_link(icon_name: "linkedin_d_icon", url: "https://www.linkedin.com/in/palatip-jantawong/"),
        Contact_link(icon_name: "instagram_d_icon", url: "https://www.instagram.com/whos.fee/"),
        Contact_link(icon_name: "twitter_d_icon", url: "https://twitter.com/palatipjant"),
        Contact_link(icon_name: "facebook_d_icon", url: "https://www.facebook.com/palatipjant"),
        Contact_link(icon_name: "medium_d_icon", url: "https://medium.com/@palatipjant")
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

struct Speaker: Hashable, Identifiable{
    let id = UUID()
    let image: String
    let category: String
    let heading: String
    let author: String
    let url: String
    
}
struct Speakers {
    
    static let sample_data = 
        Speaker(image: "python_pathway", category: "Speaker", heading: "Python Developer Pathway (The First Chapter : Be Inspired)", author: "Palatip Jantawong", url: "https://www.facebook.com/msftstudentambassadorsbu/posts/pfbid0NcXtYQisBLDQge4TeB49sM2V2Q9dcr9XX8eKHqAXeWwx37TRZrFg8UkNxviiMUuel")
        
    static let speak_data = [
        Speaker(image: "python_pathway", category: "Speaker", heading: "Python Developer Pathway (The First Chapter : Be Inspired)", author: "Palatip Jantawong", url: "https://www.facebook.com/msftstudentambassadorsbu/posts/pfbid0NcXtYQisBLDQge4TeB49sM2V2Q9dcr9XX8eKHqAXeWwx37TRZrFg8UkNxviiMUuel")
    ]
}

struct Blog: Hashable, Identifiable{
    let id = UUID()
    let image: String
    let category: String
    let heading: String
    let author: String
    let url: String
}

struct Blogs {
    static let sample_data = Blog(image: "carbon_app", category: "Awards", heading: "1st place Application Development Competition", author: "Palatip Jantawong", url: "https://www.linkedin.com/feed/update/urn:li:activity:7095910341724770304/")
    
    static let blogs_data = [
        Blog(image: "carbon_app", category: "Awards", heading: "1st place Application Development Competition", author: "Palatip Jantawong", url: "https://www.linkedin.com/feed/update/urn:li:activity:7095910341724770304/"),
        Blog(image: "angular-deploy", category: "Blog", heading: "วิธี Deploy Angular บน Azure Web App ผ่าน VSCode", author: "Palatip Jantawong", url: "https://medium.com/@palatipjant/%E0%B8%A7%E0%B8%B4%E0%B8%98%E0%B8%B5-deploy-angular-%E0%B8%9A%E0%B8%99-azure-web-app-%E0%B8%9C%E0%B9%88%E0%B8%B2%E0%B8%99-vscode-4959780760df"),
        Blog(image: "ytsa", category: "YTSA#18", heading: "Young Thai Science Ambassadors", author: "Palatip Jantawong", url: "https://www.linkedin.com/feed/update/urn:li:activity:7024974345076690944/"),
        Blog(image: "mlsa1", category: "MLSA", heading: "Microsoft Learn Student Ambassadors", author: "Palatip Jantawong", url: "https://mvp.microsoft.com/studentambassadors/certificate/37d5e587-c9f1-4f32-a63b-1ab24fc49bd2"),
        Blog(image: "basic-file-exploit", category: "Blog", heading: "basic-file-exploit", author: "Palatip Jantawong", url: "https://medium.com/@palatipjant/basic-file-exploit-picoctf-26d9b97e60e8"),
        Blog(image: "picoCTF-Forensics", category: "Blog", heading: "picoCTF-Forensics", author: "Palatip Jantawong", url: "https://medium.com/@palatipjant/picoctf-forensics-5df13791721")
    ]
}
