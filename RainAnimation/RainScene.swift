//
//  RainScene.swift
//  RainAnimation
//
//  Created by Angelos Staboulis on 19/7/24.
//

import UIKit
import SpriteKit
class RainScene: SKScene {
    var rainEmitter = SKEmitterNode(fileNamed: "ParticleRain.sks") ?? .init()
    override func didMove(to view: SKView) {
        self.backgroundColor = .black
        self.addChild(rainEmitter)
        rainEmitter.position.y = self.frame.maxY
        rainEmitter.particlePositionRange.dx = self.frame.width * 2.5
    }
}
