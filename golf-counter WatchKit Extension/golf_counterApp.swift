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
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                    .environmentObject(Scores())
            }
        }
    }
}

