//
//  ContentView.swift
//  Example
//
//  Created by 신동규 on 9/5/24.
//

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

#Preview {
    ContentView()
}
