//
//  ScoreView.swift
//  golf-counter WatchKit Extension
//
//  Created by 檜垣貴仁 on 2022/02/04.
//

import SwiftUI

struct ScoreList: View {
    @EnvironmentObject private var scores :Scores
    
    var body: some View {
        List {
            Text("Total    \(scores.Score.reduce(0, +)) ( \(scores.Putter.reduce(0, +)) ) \(scores.Score.reduce(0, +) - scores.ParNo.reduce(0, +))")
                .fontWeight(.bold)
                .foregroundColor(Color(hue: 0.001, saturation: 1.0, brightness: 1.0))
            
            ForEach(0..<18) { (row: Int) in
                if (scores.Score[row] - scores.ParNo[row]) > 0 {
                    Text("\(row+1)H  PAR\(scores.ParNo[row])  \(scores.Score[row]) ( \(scores.Putter[row]) ) +\(scores.Score[row] - scores.ParNo[row])")
                }
                else {
                    Text("\(row+1)H  PAR\(scores.ParNo[row])  \(scores.Score[row]) ( \(scores.Putter[row]) ) \(scores.Score[row] - scores.ParNo[row])")
                }
            }
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreList()
            .environmentObject(Scores())
    }
}
