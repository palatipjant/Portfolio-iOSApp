//
//  ddd.swift
//  Portfolio-iOSApp
//
//  Created by Palatip Jantawong on 21/10/2566 BE.
//

import SwiftUI

struct ddd: View {
    @Environment(\.colorScheme) var colorScheme

        var body: some View {
            Text(colorScheme == .dark ? "In dark mode" : "In light mode")
        }
}

#Preview {
    ddd()
}
