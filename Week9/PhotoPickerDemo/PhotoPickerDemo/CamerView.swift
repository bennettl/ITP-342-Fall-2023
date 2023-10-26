//
//  CamerView.swift
//  PhotoPickerDemo
//
//  Created by Bennett Lee on 10/18/23.
//

import SwiftUI
import UIKit

struct CamerView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .camera
        return imagePicker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {

    }
}

#Preview {
    CamerView()
}
