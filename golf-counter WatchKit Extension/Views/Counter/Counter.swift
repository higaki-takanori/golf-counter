//
//  Counter.swift
//  golf-counter WatchKit Extension
//
//  Created by 檜垣貴仁 on 2022/02/04.
//

import SwiftUI

struct Counter: View {
    var body: some View {
        VStack {
            InfoHole()
            CountScore()
                        
        }
    }
}

struct Counter_Previews: PreviewProvider {
    static var previews: some View {
        Counter()
            .environmentObject(CountState())
    }
}
