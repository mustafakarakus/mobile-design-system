//
//  ButtonStyleGuide.swift
//  MobileDesignSystem
//
//  Created by Mustafa Karakus on 12.04.2023.
//

import SwiftUI

struct ButtonStyleGuide: View {
    @State var isDisabled = true
    
    var body: some View {
        VStack{
            Text("Button Style Guide").designSystem(.h1).padding()

            Button(action: {
                // Button tapped
            }, label: {
                Text("Primary")
            })
            .buttonStyle(.designSystem(.primary))
            
            Button(action: {
                // Button tapped
            }, label: {
                Text("Secondary")
            })
            .buttonStyle(.designSystem(.secondary))
            
            Button(action: {
                // Button tapped
            }, label: {
                Text("Small Primary")
            })
            .buttonStyle(.designSystem(.primary, size: .small))
            
            Button(action: {
                // Button tapped
            }, label: {
                Text("Small Primary")
            })
            .buttonStyle(.designSystem(.secondary, size: .small))
            
            Button(action: {
                // Button tapped
            }, label: {
                Text("Destructive")
            })
            .buttonStyle(.designSystem(.desctructive))
            
            Button(action: {
                // Button tapped
                if !isDisabled{
                    print("Not Disabled")
                }else {
                    print("Disabled")
                }
            }, label: {
                Text("Disabled Button")
            })
            .buttonStyle(.designSystem(isDisabled ? .disabled : .primary))
            
        }.padding()
    }
}

struct ButtonStyleGuide_Previews: PreviewProvider {
    static var previews: some View {
            ButtonStyleGuide()
            .loadCustomFonts()
                .preferredColorScheme(.light)
            
            ButtonStyleGuide()
                .preferredColorScheme(.dark)
     
    }
}
