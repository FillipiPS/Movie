//
//  CastView.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 10/01/21.
//

import SwiftUI

struct CastView: View {
    //MARK: - Instantiate Properties

    let characters: [CharacterViewModel]

    //MARK: - Body View

    var body: some View {
        VStack(alignment: .leading, spacing: 1) {
            Text(Constants.View.cast)
                .font(.largeTitle)
                .padding(.leading, 10)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(characters, id: \.id) { character in
                        CharacterView(character: character)
                    }
                }
            }.frame(height: 170)
        }
    }
}

//MARK: - Preview

struct CastView_Previews: PreviewProvider {
    static var previews: some View {
        let character = [
            CharacterViewModel(character: Character(id: 10959,
                                                    name: "Shia LaBeouf",
                                                    characterName: "Sam Witwicky",
                                                    image: "/ljlpaXEManszxIcshYQoqo4au03.jpg")),

            CharacterViewModel(character: Character(id: 19537,
                                                    name: "Megan Fox",
                                                    characterName: "Mikaela Banes",
                                                    image: "/7XkWPXyoByFJorisd1W62uFj0pd.jpg"))]
        CastView(characters: character)
    }
}
