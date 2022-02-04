//
//  CountState.swift
//  golf-counter WatchKit Extension
//
//  Created by 檜垣貴仁 on 2022/02/04.
//

import Foundation
import SwiftUI

let initwatchColor = UIColor.black
let initHoleNo = 1
let initParNo = 4
let initScore = 1
let initPutter = 0
let initisPutter = false

final class CountState: ObservableObject {
    @Published var watchColor = initwatchColor
    @Published var HoleNo = initHoleNo
    @Published var ParNo = initParNo
    @Published var Score = initScore
    @Published var Putter = initPutter
    @Published var isPutter = initisPutter
        
    func initCountState() {
        self.watchColor = initwatchColor
        self.HoleNo = initHoleNo
        self.ParNo = initParNo
        self.Score = initScore
        self.Putter = initPutter
        self.isPutter = initisPutter
    }
    
    func nextHole() {
        self.watchColor = initwatchColor
        self.HoleNo = self.HoleNo + 1
        self.ParNo = initParNo
        self.Score = initScore
        self.Putter = initPutter
        self.isPutter = initisPutter

    }
}
