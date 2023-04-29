//
//  Color.swift
//  MobileDesignSystem
//
//  Created by Mustafa Karakus on 12.04.2023.
//

import SwiftUI

public enum DesignSystemColor {
    public enum Token: String {
        case primary,
             secondary,
             accent,
             surface,
             disabled,
             danger
        // Add more cases as needed
    }
}

public extension DesignSystemColor {
    static func color(_ token: Token) -> Color {
        return Color(token.rawValue, bundle: Bundle.module)
    }
}


public extension Color {
    static func designSystem(_ designSystemColor: DesignSystemColor.Token) -> Color {
        return DesignSystemColor.color(designSystemColor)
    }
}
