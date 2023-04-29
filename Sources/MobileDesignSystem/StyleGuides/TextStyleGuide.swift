//
//  TextStyleGuide.swift
//  MobileDesignSystem
//
//  Created by Mustafa Karakus on 12.04.2023.
//

import SwiftUI

struct TextStyleGuide: View {
    var body: some View {
        VStack{
            Text("Text Style Guide").designSystem(.h1).padding()
            
            Text("Title")
                .titleStyle()
            
            Text("Body")
                .bodyStyle()
            
            Text("Body Regular")
                .bodyRegularStyle()
            
            Text("Body Bold")
                .bodyBoldStyle()
            
            Text("Caption")
                .captionStyle()
            
            Text("H1")
                .h1Style()
            
            Text("H2")
                .h2Style()
            Text("H3")
                .h3Style()
            
            Text("Custom").designSystem(.title)
        }
    }
}

struct TextStyleGuide_Previews: PreviewProvider {
    static var previews: some View {
        TextStyleGuide()
            .loadCustomFonts()
            .preferredColorScheme(.light)
        
        TextStyleGuide()
            .preferredColorScheme(.dark)
    }
}
