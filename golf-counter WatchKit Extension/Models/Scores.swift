//
//  Scores.swift
//  golf-counter WatchKit Extension
//
//  Created by 檜垣貴仁 on 2022/02/04.
//

import Foundation

let holeAll = 18
let initNum = 0

final class Scores: ObservableObject {
    
    @Published var Score = [Int](repeating: initNum, count: holeAll)
    @Published var Putter = [Int](repeating: initNum, count: holeAll)
    @Published var ParNo = [Int](repeating: initNum, count: holeAll)
    
    func initScores() {
        self.Score = [Int](repeating: initNum, count: holeAll)
        self.Putter = [Int](repeating: initNum, count: holeAll)
        self.ParNo = [Int](repeating: initNum, count: holeAll)
    }
}
