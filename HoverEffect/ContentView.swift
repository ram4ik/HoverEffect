//
//  ContentView.swift
//  HoverEffect
//
//  Created by Ramill Ibragimov on 16.04.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var hovered = false
    
    var body: some View {
        VStack {
            Text("Hello, Hover Effect!")
                .scaleEffect(hovered ? 2.0 : 1.0)
                .animation(.default)
                .onHover { isHovered in
                    self.hovered = isHovered
                }
            Text("Lift")
                .hoverEffect(.lift)
            Text("Highlight")
                .hoverEffect(.highlight)
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
