# DGLineHeight

When looking at the design of a product, there are cases where the height of each line is set in the area where text must be displayed. There are mainly two ways to express the size of text (or label). There are two types: line spacing, which indicates the distance between lines, and line height, which specifies the height of one line.

Line height appears to be commonly used, and certain design tools may only be able to set line height. However, in the case of iOS, regardless of whether UIKit or SwiftUI, only line spacing can be specified, and this library was created to use line height instead of line spacing.

## Installation

### Swift Package Manager

The [Swift Package Manager](https://www.swift.org/documentation/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler.

Once you have your Swift package set up, adding `DGLineHeight` as a dependency is as easy as adding it to the dependencies value of your Package.swift or the Package list in Xcode.

```
dependencies: [
   .package(url: "https://github.com/donggyushin/DGLineHeight.git", .upToNextMajor(from: "1.0.1"))
]
```

Normally you'll want to depend on the DgSlideButton target:

```
.product(name: "DGLineHeight", package: "DGLineHeight")
```

## Usage
```swift
import SwiftUI
import DGLineHeight

struct ContentView: View {
    var body: some View {
        VStack {
            
            Text("without line height")
                .font(Font(UIFont.boldSystemFont(ofSize: 20)))
                .background {
                    Rectangle()
                        .fill(.red)
                }
            
            Text("with line height")
                .fontWithLineHeight(font: .boldSystemFont(ofSize: 20), lineHeight: 40)
                .background {
                    Rectangle()
                        .fill(.blue)
                }
            
        }
        .padding()
    }
}
```

<img src="https://github.com/user-attachments/assets/9763447c-7e95-4734-9e89-b21c8a0475fc" width=250 />
