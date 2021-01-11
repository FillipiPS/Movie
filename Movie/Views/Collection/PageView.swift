//
//  PageView.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 09/01/21.
//

import SwiftUI

struct PageView<Page: View>: View {
    //MARK: - Instatiate Properties

    var pages: [Page]
    @State private var currentPage = 0

    //MARK: - Body View

    var body: some View {
        VStack {
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
        }
    }
}

//MARK: - Preview

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        let images = ["/77P56ZcL8M9Cw7FIptMIGjhNJoj.jpg",
                      "/1nhHXA2SwT9DE813OTe83hcoub2.jpg",
                      "/1mBRoDVPPJ4T7bDleBBaYvGUYUc.jpg",
                      "/vWMjDnwsgYCoBoY1JSSoklxI99l.jpg",
                      "/hNUKnbOykE04axQdrwB2bRuUMkj.jpg"]
        PageView(pages: images.map { URLImage(url: $0) })
            .aspectRatio(3 / 2, contentMode: .fit)
    }
}
