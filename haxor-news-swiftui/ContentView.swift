//
//  ContentView.swift
//  haxor-news-swiftui
//
//  Created by Iury Vasconcelos on 17/08/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
            }
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear {
            networkManager.fetchDate()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//    Post(id: "1", titler: "Hello"),
//    Post(id: "2", titler: "Bonjour"),
//    Post(id: "3", titler: "Hola"),
//    Post(id: "4", titler: "Konichiwa"),
//]
