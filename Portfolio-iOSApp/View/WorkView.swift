//
//  CardView.swift
//  Portfolio-iOSApp
//
//  Created by Palatip Jantawong on 20/10/2566 BE.
//

import SwiftUI
import Kingfisher

struct WorkView: View {
    
    @State private var works: [work] = []
    
    @State private var isShowingSafariView = false
    var isPreview: Bool = false
    @Binding var showWorks:Bool
    
    var body: some View {
        NavigationView {
            ScrollView{
                Spacer()
                ForEach(works) { work in
                    VStack{
                        if let url = URL(string: "https://palatipjant-api-66ab44ccf333.herokuapp.com\(work.imageURL)") {
                            KFImage(url)
                                .resizable()
                                .frame(width: 317, height: 257)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow(color: Color(.label).opacity(0.2), radius: 10)
                                .padding(.bottom)
                        }
                        VStack(alignment: .trailing) {
                            Text(work.tag)
                                .font(.headline)
                                .foregroundColor(.gray)
                                .frame(width: 310, alignment: .leading)
                            Text(work.title)
                                .multilineTextAlignment(.leading)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                                .lineLimit(3)
                                .frame(width: 310, alignment: .leading)
                            Text("PALATIP JANTAWONG")
                                .font(.caption)
                                .foregroundColor(.gray)
                                .frame(width: 310, alignment: .leading)
                            WorksButton(work: work, isShowingDetailView: .constant(false))
                        }
                    }
                    .padding()
                }
            }.scrollIndicators(.never)
                .navigationTitle("👩🏻‍💻 Works")
                .padding(.top)
        }
        .onAppear{
            getWorks()
        }
    }
    func getWorks() {
        NetworkManager.shared.getWorks { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let works):
                    self.works = works
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}

#Preview {
    WorkView(isPreview: true, showWorks: .constant(false))
}
