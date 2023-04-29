//
//  MyFormInput.swift
//  MobileDesignSystem
//
//  Created by Mustafa Karakus on 12.04.2023.
//

import SwiftUI

public struct MyFormInput: View {
    var placeholder:String
    @Binding var text:String
    
    public init(placeholder:String, text: Binding<String>) {
        self.placeholder = placeholder
        self._text = text
    }
    
    public var body: some View {
        VStack(alignment: .leading) {
            Text(placeholder).font(.designSystem(.h3))
            TextField("", text: $text)
                .font(.designSystem(.h2))
                .accentColor(.designSystem(.primary))
                .padding(.vertical, .designSystem(.medium))
                .padding(.horizontal, .designSystem(.large))
                .overlay(
                    RoundedRectangle(cornerRadius: .designSystem(.medium))
                        .stroke(Color.gray, lineWidth: .designSystem(.xxSmall))
                )
                .background(Color.designSystem(.surface))
                .cornerRadius(.designSystem(.medium))
        }
    }
}
