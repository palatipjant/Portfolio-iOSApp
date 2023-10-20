//
//  CardView.swift
//  Portfolio-iOSApp
//
//  Created by Palatip Jantawong on 20/10/2566 BE.
//

import SwiftUI

struct CardView: View {
    
    @State private var isShowingSafariView = false
    var isPreview: Bool = false
    @Binding var showWorks:Bool
    
    var body: some View {
        NavigationView {
            ScrollView{
                Spacer()
                ForEach(Works.works_data) { work in
                    VStack{
                        
                        Image(work.image)
                            .resizable()
                            .frame(width: 317, height: 257)
                            
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        VStack(alignment: .trailing) {
                            Text(work.category)
                                .font(.headline)
                                .foregroundColor(.secondary)
                                .frame(width: 317, alignment: .leading)
                            Text(work.heading)
                                .font(.title)
                                .fontWeight(.black)
                                .foregroundColor(.primary)
                                .lineLimit(3)
                                .frame(width: 317, alignment: .leading)
                            Text(work.author.uppercased())
                                .font(.caption)
                                .foregroundColor(.secondary)
                                .frame(width: 317, alignment: .leading)
                            WorksButton(work: work, isShowingDetailView: .constant(false))
                        }
                    }
                }
            }.scrollIndicators(.never)
                .navigationTitle("👩🏻‍💻 Works")
                .navigationBarItems(trailing: Button(action: {
                                    showWorks = false
                                }) {
                                    Text("Done").bold()
                                })
                .padding(.top)
        }
    }
}

#Preview {
    CardView(isPreview: true, showWorks: .constant(false))
}
