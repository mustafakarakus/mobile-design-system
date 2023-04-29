//
//  Size.swift
//  MobileDesignSystem
//
//  Created by Mustafa Karakus on 12.04.2023.
//

import SwiftUI

public extension CGFloat {
    static let xxSmall: CGFloat = 2
    static let xSmall: CGFloat = 4
    static let small: CGFloat = 8
    static let medium: CGFloat = 16
    static let large: CGFloat = 24
    static let xLarge: CGFloat = 32
    static let xxLarge: CGFloat = 48
}


//second option;

public enum DesignSystemSize: CGFloat {
    case xxSmall = 2,
         xSmall = 4,
         small = 8,
         medium = 16,
         large = 24,
         xLarge = 32,
         xxLarge = 48
    // Add more cases as needed
}

public extension DesignSystemSize {
    static func size(_ size:DesignSystemSize) -> CGFloat {
        return size.rawValue
    }
}

public extension CGFloat {
    static func designSystem(_ designSystemSize: DesignSystemSize) -> CGFloat {
        return DesignSystemSize.size(designSystemSize)
    }
}
