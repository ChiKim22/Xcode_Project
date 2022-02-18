//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Jinho Kim on 2022/02/18.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button{
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star"  )
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .orange : .gray)
        }
        
    }
}

    struct FavoriteButton_Previews: PreviewProvider {
        static var previews: some View {
            FavoriteButton(isSet: .constant(true))
        }
}

