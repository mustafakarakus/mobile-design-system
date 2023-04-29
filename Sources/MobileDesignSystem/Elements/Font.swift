//
//  Font.swift
//  MobileDesignSystem
//
//  Created by Mustafa Karakus on 12.04.2023.
//

import SwiftUI
import Foundation
import CoreText

public extension Font {
    static let regular = Font.custom("Raleway-Regular", size: .designSystem(.large))
    static let body1 = Font.custom("Raleway-Light", size: .designSystem(.medium))
    static let heading1 = Font.custom("Raleway-Medium", size: .designSystem(.xLarge))
    static let heading2 = Font.custom("Raleway-Medium", size: .designSystem(.large))
    static let heading3 = Font.custom("Raleway-Medium", size: .designSystem(.medium))
}

//second option;

public extension Font {
    struct Raleway {
        enum FontStyle:String, CaseIterable {
            case light = "Light",
                 bold = "Bold",
                 regular = "Regular",
                 medium = "Medium",
                 semiBold = "SemiBold"
        }
        
        static func customFont(size: CGFloat, style: FontStyle) -> Font {
            return Font.custom("\(Raleway.self)-\(style.rawValue)", size: size)
        }
        
        static func light(size: CGFloat) -> Font {
            customFont(size: size, style: .light)
        }
        
        static func regular(size: CGFloat) -> Font{
            customFont(size: size, style: .regular)
        }
        
        static func medium(size: CGFloat) -> Font{
            customFont(size: size, style: .medium)
        }
        
        static func semiBold(size: CGFloat) -> Font{
            customFont(size: size, style: .semiBold)
        }
        
        static func bold(size: CGFloat) -> Font{
            customFont(size: size, style: .bold)
        }
    }
}

public enum DesignSystemFont {
    public enum Token {
        case title,
             body,
             bodyRegular,
             bodyBold,
             caption,
             h1,
             h2,
             h3
    }
}

public extension DesignSystemFont {
    static func font(_ token: DesignSystemFont.Token) -> Font {
        switch token {
        case .title:
            return Font.custom("Raleway-Bold", size: .designSystem(.xxLarge))
        case .body:
            return Font.Raleway.light(size: .designSystem(.large))
        case .bodyRegular:
            return Font.Raleway.regular(size: .designSystem(.large))
        case .bodyBold:
            return Font.Raleway.bold(size: .designSystem(.large))
        case .caption:
            return Font.Raleway.semiBold(size: .designSystem(.medium))
        case .h1:
            return Font.Raleway.medium(size: .designSystem(.xLarge))
        case .h2:
            return Font.Raleway.medium(size: .designSystem(.large))
        case .h3:
            return Font.Raleway.medium(size: .designSystem(.medium))
        }
    }
}

public extension Font {
    static func designSystem(_ designSystemFont: DesignSystemFont.Token) -> Font {
        return DesignSystemFont.font(designSystemFont)
    }
    
    static func registerCustomFonts() {
        Font.Raleway.FontStyle.allCases.forEach { fontStyle in
            let fileName = "\(Font.Raleway.self)-\(fontStyle.rawValue)"
            guard
                let url = Bundle.module.url(forResource: fileName, withExtension: "ttf"),
                CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
            else {
                return
            }
        }
    }
}

extension View {
    /// Attach this to any Xcode Preview's view to have custom fonts displayed
    /// Note: Not needed for the actual app
    public func loadCustomFonts() -> some View {
        Font.registerCustomFonts()
        return self
    }
}
