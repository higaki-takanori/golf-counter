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
        
        VStack(spacing: 0) {
            Spacer()
                .frame(maxHeight: .infinity)
            
            DisplayColor()
            
            Spacer(minLength: 24)
            
            NavigationLink("Select Color", destination: SelectColor())
            
            Spacer()
                .frame(maxHeight: .infinity)
        }
        
    }
}


struct PutterColor_Previews: PreviewProvider {
    static var previews: some View {
        PutterColor()
            .environmentObject(CountState())
    }
}
