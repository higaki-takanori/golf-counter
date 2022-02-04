//
//  CountScore.swift
//  golf-counter WatchKit Extension
//
//  Created by 檜垣貴仁 on 2022/02/04.
//

import SwiftUI

struct CountScore: View {
    @EnvironmentObject private var countState :CountState
    
    var body: some View {
        HStack {
            // Minus Botton
            Button(action: {
                if countState.isPutter {
                    if 0 < countState.Putter {
                        knock(type: WKHapticType(rawValue: 7))
                        countState.Score = countState.Score - 1
                        countState.Putter = countState.Putter - 1
                    }
                    
                } else {
                    if 1 < countState.Score && countState.Putter < countState.Score {
                        knock(type: WKHapticType(rawValue: 7))
                        countState.Score = countState.Score - 1
                    }
                }
            }) {
                Text("-")
            }
            .buttonStyle(MinusbtnStyle())
            
            VStack {
                // Score Text
                Text("\(countState.Score)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                // Putter Text
                Text("( \(countState.Putter) )")
                    .font(.title2)
            }
                        
            // Plus Botton
            Button(action: {
                knock(type: WKHapticType(rawValue: 7))
                countState.Score = countState.Score + 1
                if countState.isPutter {
                    countState.Putter = countState.Putter + 1
                }
            }) {
                Text("+")
            }
                .buttonStyle(PlusbtnStyle())
            
            
        }
    }
}


struct PlusbtnStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(.vertical ,0)
            .font(.largeTitle)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundColor(Color.black)
            .background(Color.green)
            .cornerRadius(12.0)
            .listRowInsets(EdgeInsets())
    }
}

struct MinusbtnStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(.vertical, 0)
            .font(.largeTitle)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundColor(Color.black)
            .background(Color.red)
            .cornerRadius(12.0)
    }
}

func knock(type: WKHapticType?) {
    guard let hType = type else { return }
    WKInterfaceDevice.current().play(hType)
}


struct CountScore_Previews: PreviewProvider {
    static var previews: some View {
        CountScore()
            .environmentObject(CountState())
    }
}
