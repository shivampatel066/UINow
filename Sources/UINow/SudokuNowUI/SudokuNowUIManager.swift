//
//  SudokuNowUIManager.swift
//  UINow
//
//  Created by Shivam Patel on 22/02/25.
//

import UIKit

extension UIM {
    public class Sudoku {
        public class Home {
            @MainActor public static func titleLabel(title: String, isPad: Bool = isPad, textAlignment: NSTextAlignment = .center, adjustFontSize: Bool = true) -> UILabel {
                return UILabel.createLabel(text: title, fontSize: isPad ? 84 : 48, textAlignment: textAlignment, adjustsFontSize: adjustFontSize)
            }
            @MainActor public static func scoreLabel(title: String, isPad: Bool = isPad, textAlignment: NSTextAlignment = .center, adjustFontSize: Bool = true, isIconLeft: Bool = true, priority: UILayoutPriority = .defaultLow) -> UILabel {
                return UILabel.createLabel(text: isIconLeft ? "🪙 \(title)" : "\(title) 🪙", fontSize: isPad ? 48 : 30, textAlignment: textAlignment, adjustsFontSize: adjustFontSize)
            }
            @MainActor public static func bestTimeLabel(title: String, isPad: Bool = isPad, textAlignment: NSTextAlignment = .center, adjustFontSize: Bool = true, isIconLeft: Bool = false, priority: UILayoutPriority = .defaultHigh) -> UILabel {
                return UILabel.createLabel(text: isIconLeft ? "⌛ \(title)" : "\(title) ⌛", fontSize: isPad ? 48 : 30, textAlignment: textAlignment, adjustsFontSize: adjustFontSize, priority: priority)
            }
            @MainActor public static func totalGamesPlayedLabel(title: String, isPad: Bool = isPad, textAlignment: NSTextAlignment = .center, adjustFontSize: Bool = true, isIconLeft: Bool = false, priority: UILayoutPriority = .defaultLow) -> UILabel {
                return UILabel.createLabel(text: isIconLeft ? "🎮 \(title)" : "\(title) 🎮", fontSize: isPad ? 48 : 30, textAlignment: textAlignment, adjustsFontSize: adjustFontSize, priority: priority)
            }
        }
    }
}
