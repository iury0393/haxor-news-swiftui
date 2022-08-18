//
//  ContentView.swift
//  haxor-news-swiftui
//
//  Created by Iury Vasconcelos on 17/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.titler)
            }
            .navigationTitle("H4X0R NEWS")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Post: Identifiable {
    let id: String
    let titler: String
}

let posts = [
    Post(id: "1", titler: "Hello"),
    Post(id: "2", titler: "Bonjour"),
    Post(id: "3", titler: "Hola"),
    Post(id: "4", titler: "Konichiwa"),
]
