import SwiftUI

public struct MobileDesignSystem {
    public private(set) var text = "Hello, World!"

    public init() {
        print("yes")
        Font.registerCustomFonts()
    }
}
