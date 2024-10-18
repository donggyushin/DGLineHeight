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

struct FontWithLineHeightPercentage: ViewModifier {
    let font: UIFont
    let percentage: CGFloat
    var lineHeight: CGFloat {
        font.lineHeight * percentage
    }

    func body(content: Content) -> some View {
        content
            .font(Font(font))
            .lineSpacing(lineHeight - font.lineHeight)
            .padding(.vertical, (lineHeight - font.lineHeight) / 2)
    }
}

public extension View {
    func fontWithLineHeight(font: UIFont, lineHeight: CGFloat) -> some View {
        ModifiedContent(content: self, modifier: FontWithLineHeight(font: font, lineHeight: lineHeight))
    }
    
    func fontWithLineHeight(font: UIFont, percentage: CGFloat) -> some View {
        ModifiedContent(content: self, modifier: FontWithLineHeightPercentage(font: font, percentage: percentage))
    }
}
