//
//  SaveAndPutter.swift
//  golf-counter WatchKit Extension
//
//  Created by 檜垣貴仁 on 2022/02/04.
//

import SwiftUI

struct SaveAndPutter: View {
    @EnvironmentObject private var scores :Scores
    @EnvironmentObject private var countState :CountState

    var body: some View {
        HStack {
            // Putter Button
            Button(action: {
                knock(type: hapticType)
                if countState.isPutter {
                    countState.watchColor = UIColor.black
                    countState.isPutter = false
                } else {
                    countState.watchColor = UIColor.init(_colorLiteralRed: 2.0, green: 6.0, blue: 9.0, alpha: 0.1)
                    countState.isPutter = true
                }
                
            }) {
                Image("putter")
                    .renderingMode(.template)
                    .foregroundColor(.white)
                    .opacity(countState.isPutter ? 1 : 0.4)
                
            }
            
            // Save Button
            Button(action: {
                knock(type: hapticType)
                scores.Score[countState.HoleNo-1] = countState.Score
                scores.Putter[countState.HoleNo-1] = countState.Putter
                scores.ParNo[countState.HoleNo-1] = countState.ParNo
                if countState.HoleNo < 18 {
                    countState.nextHole()
                } else {
                    //                    viewNo = ViewNoList.scoreViewNo.rawValue
                }
            }) {
                Image("save")
                    .renderingMode(.template)
                    .foregroundColor(.white)
                
            }
            
        }
    }
}

struct SaveAndPutter_Previews: PreviewProvider {
    static var previews: some View {
        SaveAndPutter()
            .environmentObject(Scores())
            .environmentObject(CountState())
    }
}
