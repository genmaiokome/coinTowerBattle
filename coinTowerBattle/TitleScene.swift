//
//  GameScene.swift
//  コインタワーバトル
//
//  Created by 渡辺涼介 on 2020/11/28.
//  Copyright © 2020 ryosuke.watanabe. All rights reserved.
//

import SpriteKit

class TitleScene: SKScene {
    
    
    
    override func didMove(to view: SKView) {
        backgroundColor = UIColor(red: 0.15, green: 0.75, blue: 0.90, alpha: 1)
    
        setupLabel()
    }
    
    func setupLabel() {
        
        let freeMatchTexture = SKTexture(imageNamed: "フリーマッチ")
        freeMatchTexture.filteringMode = .linear
        let frendMatchTexture = SKTexture(imageNamed: "フレンドマッチ")
        frendMatchTexture.filteringMode = .linear
        let settingTexture = SKTexture(imageNamed: "設定")
        settingTexture.filteringMode = .linear
        
        let freeMatchSprite = SKSpriteNode(texture: freeMatchTexture)
        freeMatchSprite.position = CGPoint(x: self.frame.size.width / 2, y: self.frame.size.height / 3)
        let frendMatchSprite = SKSpriteNode(texture: frendMatchTexture)
        frendMatchSprite.position = CGPoint(x: self.frame.size.width / 2, y: self.frame.size.height / 3 - freeMatchTexture.size().height - 5)
        let settingSprite = SKSpriteNode(texture: settingTexture)
        settingSprite.position = CGPoint(x: self.frame.size.width / 2, y: self.frame.size.height / 3 - freeMatchTexture.size().height * 2 - 10)
        
        let rightSpin = SKAction.rotate(byAngle: -3.14 / 20, duration: 0.1)
        let leftSpin = SKAction.rotate(byAngle: 3.14 / 20, duration: 0.1)
        let waitAnimation = SKAction.wait(forDuration: 3)
        let jerkingAnimation = SKAction.repeatForever(SKAction.sequence([rightSpin, leftSpin, waitAnimation]))
        
        freeMatchSprite.run(jerkingAnimation)
        frendMatchSprite.run(jerkingAnimation)
        settingSprite.run(jerkingAnimation)
        
        addChild(freeMatchSprite)
        addChild(frendMatchSprite)
        addChild(settingSprite)
        
    }
    
}
