//
//  BennettTextView.swift
//  PhotoPickerDemo
//
//  Created by Bennett Lee on 10/18/23.
//

import SwiftUI
import UIKit

struct BennettTextView: UIViewRepresentable {
    @Binding var text: String

    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        return textView
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
    }

}

//#Preview {
//    BennettTextView()
//}
