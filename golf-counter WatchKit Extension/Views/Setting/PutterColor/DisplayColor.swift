//
//  DisplayColor.swift
//  golf-counter WatchKit Extension
//
//  Created by 檜垣貴仁 on 2022/02/07.
//

import SwiftUI
import TSColorWheel

struct DisplayColor: View {
    @ObservedObject var colorWheelSettings = TSColorWheelSettings.shared
//    @EnvironmentObject private var countState :CountState
    
    var body: some View {
        VStack(spacing: 8) {
            Text("Selected Color:")

            Circle()
                .fill(Color(colorWheelSettings.color))
                .frame(width: 48, height: 48)
                .overlay(
                    Circle()
                        .stroke(
                            Color(colorWheelSettings.borderColor),
                            lineWidth: colorWheelSettings.isLightColor ? 0 : 2
                        )
                )
        }
    }
}

struct DisplayColor_Previews: PreviewProvider {
    static var previews: some View {
        DisplayColor()
//            .environmentObject(CountState())
    }
}
