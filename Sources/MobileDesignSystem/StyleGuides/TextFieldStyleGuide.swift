//
//  TextFieldStyleGuide.swift
//  MobileDesignSystem
//
//  Created by Mustafa Karakus on 12.04.2023.
//

import SwiftUI

struct TextFieldStyleGuide: View {
    @State var firstName = "Mustafa"
    @State var lastName = ""
    @State var invalid = "error"

    var body: some View {
        VStack(alignment: .leading) {
            Text("TextField Style Guide").designSystem(.h1).padding()

            //Apply Design System Style
            TextField("First Name", text: $firstName)
                .textFieldStyle(.designSystem)
            
            //Custom TextField
            MyTextField(placeholder: "Last Name", text: $lastName)
            
            //Validation Error
            MyTextField(placeholder: "Last Name", text: $invalid, maxCharacters: 3)
            
            //Custom Component
            MyFormInput(placeholder: "First Name", text: $firstName)
            MyFormInput(placeholder: "Last Name", text: $lastName)
            
        }.padding()
    }
}

struct TextFieldStyleGuide_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldStyleGuide()
            .loadCustomFonts()
                .preferredColorScheme(.light)
            
        TextFieldStyleGuide()
                .preferredColorScheme(.dark)
     
    }
}
