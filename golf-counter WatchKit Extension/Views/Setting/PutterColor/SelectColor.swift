//
//  SelectColor.swift
//  golf-counter WatchKit Extension
//
//  Created by 檜垣貴仁 on 2022/02/07.
//

import SwiftUI
import TSColorWheel

struct SelectColor: View {
    var body: some View {
        VStack {
            Text("Select a Color")
            TSColorWheel()
        }
    }
}

struct SelectColor_Previews: PreviewProvider {
    static var previews: some View {
        SelectColor()
    }
}
