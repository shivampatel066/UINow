//
//  Util.swift
//  UINow
//
//  Created by Shivam Patel on 23/02/25.
//


import Foundation
import UIKit

// Define the global computed property
@MainActor public enum DeviceType {
    case iPad
    case iPhone
    case iPhoneMini
    
    static var current: DeviceType {
        if UIDevice.current.userInterfaceIdiom == .pad {
            return .iPad
        } else {
            let screenHeight = UIScreen.main.bounds.height
            if screenHeight <= 667 { // iPhone SE (2nd and 3rd gen) height
                return .iPhoneMini
            } else {
                return .iPhone
            }
        }
    }
}

@MainActor public var isPhoneMini: Bool {
    let screenHeight = UIScreen.main.bounds.height
    if UIDevice.current.userInterfaceIdiom == .phone && screenHeight <= 667 { // iPhone SE (2nd and 3rd gen) height
        return true
    }
    return false
}

@MainActor public var isPhone: Bool {
    let screenHeight = UIScreen.main.bounds.height
    if UIDevice.current.userInterfaceIdiom == .phone && screenHeight > 667 { // iPhone not SE (2nd and 3rd gen) height
        return true
    }
    return false
}

@MainActor public var isPad: Bool {
    UIDevice.current.userInterfaceIdiom == .pad
}

@MainActor public func fontH(ofSize size: CGFloat? = nil) -> UIFont? {
    if let size = size {
        return UIFont(name: "HelveticaNeue-Medium", size: size)
        
    }
    return UIFont(name: "HelveticaNeue-Medium", size: isPad ? 34 : 24)
}
