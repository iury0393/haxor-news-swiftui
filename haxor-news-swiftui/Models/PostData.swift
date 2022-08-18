//
//  PostData.swift
//  haxor-news-swiftui
//
//  Created by Iury Vasconcelos on 18/08/22.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
