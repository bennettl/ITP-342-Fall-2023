//
//  ColorPage.swift
//  TabDemo
//
//  Created by Bennett Lee on 10/4/23.
//

import SwiftUI

struct ColorPage : View {
    let color: Color

    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
            }
        }
        .background(color.opacity(0.5))
    }
}


#Preview {
    ColorPage(color: .red)
}
