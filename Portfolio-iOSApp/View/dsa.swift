//
//  dsa.swift
//  Portfolio-iOSApp
//
//  Created by Palatip Jantawong on 21/10/2566 BE.
//

import SwiftUI

struct dsa: View {
    var body: some View {
        ForEach(Works.works_data) { work in
            VStack{
                Image(work.image)
                    .resizable()
                    .frame(width: 317, height: 257)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .shadow(color: Color(.label).opacity(2), radius: 10)
                    .padding(.bottom)
                VStack(alignment: .trailing) {
                    Text(work.category)
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .frame(width: 310, alignment: .leading)
                    Text(work.heading)
                        .multilineTextAlignment(.leading)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                        .frame(width: 310, alignment: .leading)
                    Text(work.author.uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .frame(width: 310, alignment: .leading)
                    WorksButton(work: work, isShowingDetailView: .constant(false))
                }
            }
        }
    }
}

#Preview {
    dsa()
}
