//
//  haptic.swift
//  golf-counter WatchKit Extension
//
//  Created by 檜垣貴仁 on 2022/02/07.
//
import SwiftUI

// haptic type
let hapticType: WKHapticType = .click

func knock(type: WKHapticType?) {
    guard let hType = type else { return }
    WKInterfaceDevice.current().play(hType)
}
