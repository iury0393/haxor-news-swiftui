//
//  DetailsViews.swift
//  haxor-news-swiftui
//
//  Created by Iury Vasconcelos on 18/08/22.
//

import SwiftUI
import WebKit

struct DetailsViews: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailsViews_Previews: PreviewProvider {
    static var previews: some View {
        DetailsViews(url: "https://www.google.com")
    }
}
