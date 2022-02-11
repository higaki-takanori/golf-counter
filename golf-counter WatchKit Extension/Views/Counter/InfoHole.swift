//
//  infoHole.swift
//  golf-counter WatchKit Extension
//
//  Created by 檜垣貴仁 on 2022/02/04.
//

import SwiftUI

struct InfoHole: View {
    @EnvironmentObject private var countState :CountState
    
    let HoleArray = ["1H", "2H", "3H", "4H", "5H", "6H", "7H", "8H", "9H", "10H", "11H", "12H", "13H", "14H", "15H", "16H", "17H", "18H"]
    let ParNoArray = ["PAR3", "PAR4", "PAR5"]
    
    var body: some View {
        
        HStack {
            // HoleNo Picker
            Picker("", selection: $countState.HoleNo) {
                ForEach(0 ..< HoleArray.count) { num in
                    Text(self.HoleArray[num]).tag(num+1)
                }
            }
            // PAR Picker
            Picker("", selection: $countState.ParNo) {
                ForEach(0 ..< ParNoArray.count) { ParNo in
                    Text(self.ParNoArray[ParNo]).tag(ParNo+3)
                }
            }
        }
    }
}

struct infoHole_Previews: PreviewProvider {
    static var previews: some View {
        InfoHole()
            .environmentObject(CountState())
    }
}
