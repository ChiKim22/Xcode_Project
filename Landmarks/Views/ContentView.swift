//
//  ContentView.swift
//  Landmarks
//
//  Created by Jinho Kim on 2021/12/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}