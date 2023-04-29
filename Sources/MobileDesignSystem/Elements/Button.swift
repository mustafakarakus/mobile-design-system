//
//  Button.swift
//  MobileDesignSystem
//
//  Created by Mustafa Karakus on 12.04.2023.
//

import SwiftUI

public enum DesignSystemButtonSize {
    case small, large
}

public enum DesignSystemButtonType {
    case primary, secondary, disabled, desctructive
}

public extension DesignSystemButtonType {
    static func button(_ type: DesignSystemButtonType,
                       size: DesignSystemButtonSize) -> DesignSystemButtonStyle {
        switch type {
        case .primary:
            return  DesignSystemButtonStyle(
                backgroundColor: .designSystem(.primary),
                foregroundColor: .designSystem(.surface),
                borderColor: .designSystem(.primary),
                size: size
            )
        case .secondary:
            return  DesignSystemButtonStyle(
                backgroundColor: .designSystem(.surface),
                foregroundColor: .designSystem(.primary),
                borderColor: .designSystem(.primary),
                size: size
            )
        case .disabled:
            return  DesignSystemButtonStyle(
                backgroundColor: .designSystem(.disabled),
                foregroundColor: .designSystem(.surface),
                borderColor: .designSystem(.disabled),
                size: size
            )
        case .desctructive:
            return  DesignSystemButtonStyle(
                backgroundColor: .designSystem(.danger),
                foregroundColor: .designSystem(.surface),
                borderColor: .designSystem(.danger),
                size: size
            )
        }
    }
}

public extension ButtonStyle where Self == DesignSystemButtonStyle {
    static func designSystem(_ designSystemButtonType: DesignSystemButtonType,
                             size: DesignSystemButtonSize = .large) -> DesignSystemButtonStyle {
        return DesignSystemButtonType.button(designSystemButtonType, size: size)
    }
}
