//
//  CharacterView.swift
//  Movie
//
//  Created by Fillipi Paiva Suszek on 10/01/21.
//

import SwiftUI

struct CharacterView: View {
    //MARK: - Instantiate Properties

    let character: CharacterViewModel

    //MARK: - Body View

    var body: some View {
        VStack {
            URLImage(url: character.image)
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .frame(width: 100, height: 100)
            Text(character.name)
                .font(.system(size: 15))
                .fontWeight(.bold)
                .fixedSize(horizontal: false, vertical: true)
                .lineLimit(2)
                .frame(width: 150)
            Text(character.characterName)
                .font(.system(size: 10))
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
                .lineLimit(2)
                .frame(width: 150)
        }.frame(height: 170)
    }
}

//MARK: - Preview

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        let character = CharacterViewModel(character: Character(id: 19537,
                                                                name: "Megan Fox Megan Fox Megan Fox Megan Fox",
                                                                characterName: "Mikaela Banes Mikaela Banes Mikaela Banes Mikaela Banes Mikaela Banes",
                                                                image: "/7XkWPXyoByFJorisd1W62uFj0pd.jpg"))
        CharacterView(character: character)
    }
}
