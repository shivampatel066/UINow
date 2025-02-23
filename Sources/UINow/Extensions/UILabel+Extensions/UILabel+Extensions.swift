//
//  UILabel+Extensions.swift
//  UINow
//
//  Created by Shivam Patel on 22/02/25.
//
import Foundation
import UIKit

public extension UILabel {
    @MainActor static func createLabel(text: String, fontSize: CGFloat, textAlignment: NSTextAlignment, adjustsFontSize: Bool = false, priority: UILayoutPriority = .defaultLow) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textAlignment = textAlignment
        label.font = fontH(ofSize: fontSize)
        label.adjustsFontSizeToFitWidth = adjustsFontSize
        label.setContentCompressionResistancePriority(priority, for: .horizontal)
        label.setContentCompressionResistancePriority(priority, for: .vertical)
        return label
    }
}
