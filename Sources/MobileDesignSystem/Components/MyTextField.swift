//
//  MyTextFields.swift
//  MobileDesignSystem
//
//  Created by Mustafa Karakus on 12.04.2023.
//

import SwiftUI

public struct MyTextField: View {
    var placeholder:String
    @Binding var text:String
    let maxCharacters: Int
    
    var isValid: Bool {
        let regex = try! NSRegularExpression(pattern: "^\\w{0,\(maxCharacters)}$")
        return regex.matches(in: text,
                             range: NSRange(text.startIndex..., in: text)).count > 0
    }
    
    public init(placeholder:String, text: Binding<String>, maxCharacters: Int = 50) {
        self.placeholder = placeholder
        self.maxCharacters = maxCharacters
        self._text = text
    }
    
    public var body: some View {
        TextField(placeholder, text: $text)
            .font(.designSystem(.h2))
            .accentColor(.designSystem(.primary))
            .padding(.vertical, .designSystem(.medium))
            .padding(.horizontal, .designSystem(.large))
            .overlay(
                RoundedRectangle(cornerRadius: .designSystem(.medium))
                    .stroke(isValid ? Color.gray: .designSystem(.danger),
                            lineWidth: .designSystem(.xxSmall))
            )
            .foregroundColor(!isValid ? .designSystem(.danger) : .none)
            .background(Color.designSystem(.surface))
            .cornerRadius(.designSystem(.medium))
    }
}
