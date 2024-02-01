//
//  BlogView.swift
//  Portfolio-iOSApp
//
//  Created by Palatip Jantawong on 25/10/2566 BE.
//

import SwiftUI

struct BlogView: View {
    @State private var isShowingSafariView = false
    var isPreview: Bool = false
    @Binding var showBlogs:Bool
    
    var body: some View {
        NavigationView {
            ScrollView{
                Spacer()
                ForEach(Blogs.blogs_data) { data in
                    VStack{
                        Image(data.image)
                            .resizable()
                            .frame(width: 317, height: 257)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(color: Color(.label).opacity(0.2), radius: 10)
                            .padding(.bottom)
                        VStack(alignment: .trailing) {
                            Text(data.category.uppercased())
                                .font(.headline)
                                .foregroundColor(.gray)
                                .frame(width: 310, alignment: .leading)
                            Text(data.heading)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                                .lineLimit(3)
                                .frame(width: 310, alignment: .leading)
                            Text(data.author.uppercased())
                                .font(.caption)
                                .foregroundColor(.gray)
                                .frame(width: 310, alignment: .leading)
                            BlogsButton(blog: data, isShowingDetailView: .constant(false))
                        }
                    }
                        .padding()
                }
            }.scrollIndicators(.never)
                .navigationTitle("📄 Blogs")
//                .navigationBarItems(trailing: Button(action: {
//                    showSpeaker = false
//                                }) {
//                                    Text("Done").bold()
//                                        .foregroundStyle(Color(.label))
//                                })
                .padding(.top)
        }
    }
}

#Preview {
    BlogView(isPreview: true, showBlogs: .constant(false))
}
