//
//  UIScreen+Extensions.swift
//  MarketTest
//
//  Created by Никита Владимирович on 07.11.2022.
//

import UIKit

extension UIScreen {
public var displayCornerRadius: CGFloat {
    guard let cornerRadius = self.value(forKey:"_displayCornerRadius") as? CGFloat else {
        return 0
    }
    return cornerRadius
 }
}
