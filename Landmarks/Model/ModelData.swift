//
//  ModelData.swift
//  Landmarks
//
//  Created by Jinho Kim on 2021/12/28.
//
// 앱 번들에서 주어진 이름으로 json 데이터를 읽는 load 메서드.

import Foundation
import Combine

//Combine 프레임워크에서 ObservableObject 프로토콜을 준수하는 새로운 모델 유형을 선언.
//SwiftUI는 관찰 가능한 객체를 구독하고, 데이터가 변경될 때 새로 고침이 필요한 모든 뷰를 업데이트함.

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")
}

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle...")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't find \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
