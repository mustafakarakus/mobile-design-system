//
//  TextFieldStyle.swift
//  MobileDesignSystem
//
//  Created by Mustafa Karakus on 12.04.2023.
//

import SwiftUI

public struct DesignSystemTextFieldStyle: TextFieldStyle {
    var isValid: Bool = true

    public func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .font(.designSystem(.h2))
            .accentColor(.designSystem(.primary))
            .padding(.vertical, .designSystem(.medium))
            .padding(.horizontal, .designSystem(.large))
            .overlay(
                RoundedRectangle(cornerRadius: .designSystem(.medium))
                    .stroke(isValid ? Color.gray : .designSystem(.danger), lineWidth: .designSystem(.xxSmall))
            )
            .foregroundColor(!isValid ? .designSystem(.danger) : .none)
            .background(DesignSystemColor.color(.surface))
            .cornerRadius(.designSystem(.medium))
    }
}

extension TextFieldStyle where Self == DesignSystemTextFieldStyle {
    public static var designSystem: DesignSystemTextFieldStyle {
        DesignSystemTextFieldStyle()
    }
}
