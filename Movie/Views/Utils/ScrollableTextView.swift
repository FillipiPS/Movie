//
//  ScrollableTextView.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 09/01/21.
//

import SwiftUI

struct ScrollableTextView: View {
    //MARK: - Instatiate Properties
    let text: String

    //MARK: - Body View

    var body: some View {
        ScrollView {
            VStack {
                Text(text)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 12))
            }
        }.frame(height: 150)
    }

}

//MARK: - Preview

struct ScrollableTextView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollableTextView(text: "Sed eget libero vestibulum, consequat urna vel, tristique justo. Suspendisse eu congue magna, a sagittis sapien. Donec eget tortor at neque hendrerit dignissim non sit amet arcu. Duis commodo leo non magna dignissim semper. Suspendisse vestibulum faucibus nulla a consequat. Ut suscipit tristique est eget dignissim. Morbi laoreet vehicula mi ut tincidunt. Nam malesuada sagittis congue. Phasellus suscipit ex ut interdum laoreet. Integer vestibulum, mauris a bibendum lacinia, lorem ante molestie lorem, quis bibendum diam nisi nec nunc. Fusce at eleifend tortor, id pellentesque ante. Aenean fermentum, ante sed lobortis cursus, lectus mi ultrices turpis, eget consectetur risus lectus eu sem. Vivamus ligula justo, finibus scelerisque odio efficitur, ultricies facilisis ipsum. Curabitur dui leo, elementum non egestas et, porttitor quis neque. Sed sit amet ligula at ipsum euismod feugiat.")
            .previewLayout(.sizeThatFits)
    }
}
