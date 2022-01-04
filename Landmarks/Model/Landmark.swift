//
//  Landmark.swift
//  Landmarks
//
//  Created by Jinho Kim on 2021/12/28.
//
// Read .json File

import Foundation
import SwiftUI
import CoreLocation // use MapKit

struct Landmark: Hashable, Codable, Identifiable { // DB 형식으로 json 읽어옴.
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates // 좌표 from .json file
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
