//
//  SpriteSheetCutter.swift
//  TinySlender
//
//  Created by Gaëtan Masson on 04/12/15.
//  Copyright © 2015 Gaëtan Masson. All rights reserved.
//

import SpriteKit

class SpriteSheetCutter {
    var spriteImage: SKTexture
    var spritePerRow: Int
    var spritePerColumn: Int
    
    init(spriteImage: SKTexture, spritePerRow: Int, spritePerColumn: Int) {
        self.spriteImage = spriteImage
        self.spritePerRow = spritePerRow
        self.spritePerColumn = spritePerColumn
    }
    
    private func calcSpriteSize() -> CGSize {
        let width = spriteImage.size().width / CGFloat(spritePerRow)
        let height = spriteImage.size().height / CGFloat(spritePerColumn)
        return CGSize(width: width, height: height)
    }
    
    private func createRect(spritePosition: CGPoint) -> CGRect {
        let spriteSize = calcSpriteSize()
        let x = (spriteSize.width * spritePosition.x) / spriteImage.size().width
        let y = (spriteSize.height * spritePosition.y) / spriteImage.size().height
        let width = spriteSize.width / spriteImage.size().width
        let height = spriteSize.height / spriteImage.size().height
        return CGRect(x: x, y: y, width: width, height: height)
    }
    
    func getSprite(spritePosition: CGPoint) -> SKTexture {
        return SKTexture(rect: createRect(spritePosition), inTexture: spriteImage)
    }
}