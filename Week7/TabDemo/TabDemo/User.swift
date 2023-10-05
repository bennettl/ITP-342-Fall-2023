//
//  User.swift
//  TabDemo
//
//  Created by Bennett Lee on 10/4/23.
//

import Foundation

struct User : Identifiable, Hashable {
    let id: String
    let name: String

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(name)
    }
}
