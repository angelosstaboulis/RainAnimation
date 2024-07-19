//
//  ContentView.swift
//  RainAnimation
//
//  Created by Angelos Staboulis on 19/7/24.
//

import SwiftUI
import SpriteKit
struct ContentView: View {
    var scene:RainScene
    var body: some View {
        SpriteView(scene: scene)
            .frame(width: UIScreen.main.bounds.width,
                   height: UIScreen.main.bounds.height)
            .ignoresSafeArea()
            .onAppear(perform: {
                scene.size = UIScreen.main.bounds.size
                scene.scaleMode = .fill
            })
       
    }
}

#Preview {
    ContentView(scene: .init())
}
