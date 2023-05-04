# Mobile Design System on SwiftUI

To implement MobileDesignSystem on your SwiftUI Application, add it to your App through Swift Package Manager.

Only you need to register the fonts on the app level as following. 

```
import SwiftUI
import MobileDesignSystem

@main
struct DesignSystemTestApp: App {
    
    init() {
        Font.registerCustomFonts()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
```

Please find the example usage under **StyleGuides** folder.
