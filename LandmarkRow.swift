//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Jinho Kim on 2021/12/30.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark // from modeldata
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            LandmarkRow(landmark: landmarks[0]) // current landmark
            LandmarkRow(landmark: landmarks[1])
        }
            .previewLayout(.fixed(width: 300, height: 70)) // landmarkView Size
    }
}

