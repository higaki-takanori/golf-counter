//
//  golf_counterApp.swift
//  golf-counter WatchKit Extension
//
//  Created by 檜垣貴仁 on 2022/02/04.
//

import SwiftUI

@main
struct golf_counterApp: App {
    @StateObject private var scores = Scores()
    @StateObject private var countState = CountState()
    @StateObject private var viewNo = ViewNo()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                    .environmentObject(Scores())
                    .environmentObject(CountState())
                    .environmentObject(ViewNo())
            }
        }
    }
}


