//
//  ButtonStyle.swift
//  MobileDesignSystem
//
//  Created by Mustafa Karakus on 12.04.2023.
//

import SwiftUI

public struct DesignSystemButtonStyle: ButtonStyle {
    var backgroundColor: Color
    var foregroundColor: Color
    var borderColor: Color = Color.designSystem(.surface)
    var size:DesignSystemButtonSize = .large
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: size == .large ? .infinity : .none)
            .font(.designSystem(.bodyRegular))
            .padding(.horizontal, .designSystem(.medium))
            .padding(.vertical, .designSystem(.medium))
            .foregroundColor(configuration.isPressed ? backgroundColor : foregroundColor)
            .background(configuration.isPressed ? foregroundColor : backgroundColor)
            .overlay(
                RoundedRectangle(cornerRadius: .designSystem(.medium))
                    .stroke(borderColor, lineWidth: .designSystem(.xSmall))
            )
            .cornerRadius(.designSystem(.medium))
    }
}

