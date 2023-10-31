//
//  Photo.swift
//  UnsplashDemo
//
//  Created by Bennett Lee on 10/30/23.
//

import Foundation

struct Urls : Codable {
    let raw: String
    let regular: String
    let small : String
}

struct Photo : Codable {
    let id: String
    let width: Int
    let height: Int
    let urls : Urls
}
