//
//  ResetScore.swift
//  golf-counter WatchKit Extension
//
//  Created by 檜垣貴仁 on 2022/02/04.
//

import SwiftUI

struct ResetScore: View {
    @EnvironmentObject private var scores :Scores
    @EnvironmentObject private var countState :CountState
//    @EnvironmentObject private var viewNo :ViewNo
    
    @State private var isReset = false
    
    var body: some View {
        if isReset {
            ZStack {
                List {
                    Button(action: {
                        scores.initScores()
                        countState.initCountState()
//                        viewNo.currentNo = ViewNoList.countViewNo.rawValue
                    }) {
                        Text("Reset")
                            .fontWeight(.bold)
                            .foregroundColor(Color.red)
                    }
                    Button(action: {
                        isReset = false
                    }) {
                        Text("Cancel")
                    }
                }
            }
        } else {
            ZStack {
                List {
                    Button(action: {
                        isReset = true
                    }) {
                        Text("Score Reset")
                            .fontWeight(.bold)
                    }
                }
            }
        }
    }
}
struct ResetScore_Previews: PreviewProvider {
    static var previews: some View {
        ResetScore()
            .environmentObject(Scores())
            .environmentObject(CountState())
    }
}
