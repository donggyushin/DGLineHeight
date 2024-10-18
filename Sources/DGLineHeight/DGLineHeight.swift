// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI
import UIKit

struct FontWithLineHeight: ViewModifier {
    let font: UIFont
    let lineHeight: CGFloat?

    func body(content: Content) -> some View {
        
        if let lineHeight {
            content
                .font(Font(font))
                .lineSpacing(lineHeight - font.lineHeight)
                .padding(.vertical, (lineHeight - font.lineHeight) / 2)
        } else {
            content
                .font(Font(font))
        }
    }
}

public extension View {
    func fontWithLineHeight(font: UIFont, lineHeight: CGFloat?) -> some View {
        ModifiedContent(content: self, modifier: FontWithLineHeight(font: font, lineHeight: lineHeight))
    }
    
    func fontWithLineHeight(font: UIFont, percentage: CGFloat?) -> some View {
        var lineHeight: CGFloat?
        
        if let percentage {
            lineHeight = font.lineHeight * percentage
        }
        
        return fontWithLineHeight(font: font, lineHeight: lineHeight)
    }
}
