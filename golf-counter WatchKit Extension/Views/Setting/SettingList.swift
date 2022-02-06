//
//  SettingList.swift
//  golf-counter WatchKit Extension
//
//  Created by 檜垣貴仁 on 2022/02/04.
//

import SwiftUI

struct SettingList: View {
    var body: some View {
        List {
            ResetScore()            
        }
    }
}

struct SettingList_Previews: PreviewProvider {
    static var previews: some View {
        SettingList()
            .environmentObject(Scores())
            .environmentObject(CountState())
    }
}
