//
//  Counter.swift
//  golf-counter WatchKit Extension
//
//  Created by 檜垣貴仁 on 2022/02/04.
//

import SwiftUI

struct Counter: View {
    @EnvironmentObject private var countState :CountState
    
    var body: some View {
        ZStack {
            Color (countState.watchColor)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                InfoHole()
                    .frame(height: 45)
                
                CountScore()
                    .frame(maxHeight: .infinity)
                
                SaveAndPutter()
                    .ignoresSafeArea()
                    .frame(maxHeight: .infinity)
            }
        }
    }
}

struct Counter_Previews: PreviewProvider {
    static var previews: some View {
        Counter()
            .environmentObject(CountState())
            .environmentObject(Scores())
    }
}
