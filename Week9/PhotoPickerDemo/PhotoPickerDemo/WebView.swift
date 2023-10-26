//
//  WebView.swift
//  PhotoPickerDemo
//
//  Created by Bennett Lee on 10/18/23.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.load(URLRequest(url: URL(string:"https://www.apple.com")!))
        return webView
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {

    }
}

#Preview {
    WebView()
}
