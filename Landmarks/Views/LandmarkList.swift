//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Jinho Kim on 2022/01/01.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoriteOnly = false
    
    var filterdLandmarkList: [Landmark] {
        modelData.landmarks.filter{ landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List{
                Toggle(isOn: $showFavoriteOnly){
                    Text("Favorite Only")
                }
                ForEach(filterdLandmarkList) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: { // ">" 추가
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
        
//        Fit screen resoulation for Devices
        
//        ForEach(["iPhone 13 mini", "iPhone 13 Pro Max"], id: \.self){deviceName in
//        LandmarkList()
//            .previewDevice(PreviewDevice(rawValue: deviceName))
//            .previewDisplayName(deviceName)
//        }
        
    }
}
