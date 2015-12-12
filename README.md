# SpriteSheetCutter
A Swift class allowing to get a sprite from a sprite sheet.
# Usage example
```swift
let spriteSheetCutter = SpriteSheetCutter(
            spriteImage: SKTexture(imageNamed: "player-sprite-sheet"),
            spritePerRow: 9,
            spritePerColumn: 4)
let texture = spriteSheetCutter.getSprite(CGPoint(x: 0, y: 0))
```
