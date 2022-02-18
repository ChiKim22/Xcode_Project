//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Jinho Kim on 2021/12/28.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
