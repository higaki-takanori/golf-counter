//
//  PutterColor.swift
//  golf-counter WatchKit Extension
//
//  Created by 檜垣貴仁 on 2022/02/07.
//

import SwiftUI
import TSColorWheel

struct PutterColor: View {

    @ObservedObject var colorWheelSettings = TSColorWheelSettings.shared

    @EnvironmentObject private var countState :CountState
   
    var body: some View {
        VStack {
            Text("Select a Color")
            TSColorWheel()
        }
    }
}


struct PutterColor_Previews: PreviewProvider {
    static var previews: some View {
        PutterColor()
            .environmentObject(CountState())
    }
}
