//
//  PutterColor.swift
//  golf-counter WatchKit Extension
//
//  Created by 檜垣貴仁 on 2022/02/07.
//

import SwiftUI

struct PutterColor: View {
//    @State private var isShowDisplayColor = false
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
                .frame(maxHeight: .infinity)
            
            DisplayColor()
            
            Spacer(minLength: 24)

//            Button(action: {
//                isShowDisplayColor.toggle()
//            }) {
//                Text("Select Color")
//            }
//            .sheet(isPresented: $isShowDisplayColor) {
//                SelectColor()
//            }
            NavigationLink("Select Color", destination: SelectColor())
            
            Spacer()
                .frame(maxHeight: .infinity)
        }
        
    }
}


struct PutterColor_Previews: PreviewProvider {
    static var previews: some View {
        PutterColor()
    }
}
