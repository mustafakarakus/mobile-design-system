//
//  TextViewModifier.swift
//  MobileDesignSystem
//
//  Created by Mustafa Karakus on 12.04.2023.
//

import SwiftUI 

public extension Text {
    func titleStyle() -> some View {
        modifier(TitleStyle())
    }
    func bodyStyle() -> some View {
        modifier(BodyStyle())
    }
    func bodyRegularStyle() -> some View {
        modifier(BodyRegularStyle())
    }
    func bodyBoldStyle() -> some View {
        modifier(BodyBoldStyle())
    }
    func captionStyle() -> some View {
        modifier(CaptionStyle())
    }
    func h1Style() -> some View {
        modifier(H1Style())
    }
    func h2Style() -> some View {
        modifier(H2Style())
    }
    func h3Style() -> some View {
        modifier(H3Style())
    }
    @ViewBuilder
    func designSystem(_ token: DesignSystemFont.Token) -> some View {
        switch token {
        case .title: titleStyle()
        case .body: bodyStyle()
        case .bodyRegular: bodyRegularStyle()
        case .bodyBold: bodyBoldStyle()
        case .caption: captionStyle()
        case .h1: h1Style()
        case .h2: h2Style()
        case .h3: h3Style()
        }
    }
}

struct TitleStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.designSystem(.title))
    }
}

struct BodyStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.designSystem(.body))
    }
}

struct BodyRegularStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.designSystem(.bodyRegular))
    }
}

struct BodyBoldStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.designSystem(.bodyRegular))
    }
}

struct CaptionStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.designSystem(.bodyBold))
    }
}

struct H1Style: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.designSystem(.h1))
    }
}

struct H2Style: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.designSystem(.h2))
    }
}

struct H3Style: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.designSystem(.h3))
    }
}
