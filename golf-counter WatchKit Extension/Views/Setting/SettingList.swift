//
//  SettingList.swift
//  golf-counter WatchKit Extension
//
//  Created by 檜垣貴仁 on 2022/02/04.
//

import SwiftUI

struct SettingList: View {
//    @State private var isShowResetScore = false
//    @State private var isShowPutterColor = false
    
    var body: some View {
        NavigationView {
//            Button(action: {
//                isShowResetScore.toggle()
//            }) {
//                Text("Reset Score")
//            }
//            .sheet(isPresented: $isShowResetScore) {
//                ResetScore()
//            }
//
//
//            Button(action: {
//                isShowPutterColor.toggle()
//            }) {
//                Text("Putter Color")
//            }
//            .sheet(isPresented: $isShowPutterColor) {
//                PutterColor()
//            }
            List {
                NavigationLink("Reset Score", destination: ResetScore())
                NavigationLink("Putter Color", destination: PutterColor())
            }
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
