//
//  CollectionView.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 09/01/21.
//

import SwiftUI

struct CollectionView: View {

    var images: [String]

    var body: some View {
        PageView(pages: images.map { URLImage(url: $0) })
            .frame(height: 250)
    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        let images = ["/77P56ZcL8M9Cw7FIptMIGjhNJoj.jpg",
                      "/1nhHXA2SwT9DE813OTe83hcoub2.jpg",
                      "/1mBRoDVPPJ4T7bDleBBaYvGUYUc.jpg",
                      "/vWMjDnwsgYCoBoY1JSSoklxI99l.jpg",
                      "/hNUKnbOykE04axQdrwB2bRuUMkj.jpg"]
        CollectionView(images: images)
    }
}
