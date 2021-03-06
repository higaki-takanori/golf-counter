//
//  ContentView.swift
//  golf-counter WatchKit Extension
//
//  Created by 檜垣貴仁 on 2022/02/04.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewNo: ViewNo
    
    var body: some View {
        TabView(selection: $viewNo.currentNo) {
            ScoreList().tag(ViewNoList.scoreViewNo.rawValue)
            Counter().tag(ViewNoList.countViewNo.rawValue)
            SettingList().tag(ViewNoList.settingViewNo.rawValue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let previewDevices = ["Apple Watch Series 7 - 45mm" ,"Apple Watch Series 6 - 40mm"]
        
        ForEach(previewDevices, id: \.self) { deviceName in
            ContentView()
                .environmentObject(Scores())
                .environmentObject(CountState())
                .environmentObject(ViewNo())
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
