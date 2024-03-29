//
//  SVGImageView.swift
//  Portfolio-iOSApp
//
//  Created by Palatip Jantawong on 1/2/2567 BE.
//

import Foundation
import UIKit
import SwiftUI
import SVGKit

struct SVGImageView: UIViewRepresentable {
    var url:URL
    var size:CGSize
    
    func updateUIView(_ uiView: SVGKFastImageView, context: Context) {
        uiView.contentMode = .scaleAspectFit
        uiView.image.size = size
    }
    
    func makeUIView(context: Context) -> SVGKFastImageView {
        let svgImage = SVGKImage(contentsOf: url)
        return SVGKFastImageView(svgkImage: svgImage ?? SVGKImage())
    }
}

struct SVGImageView_Previews: PreviewProvider {
  static var previews: some View {
    SVGImageView(url:URL(string:"https://restcountries.eu/data/arg.svg")!, size: CGSize(width: 100,height: 100))
  }
}
