//
//  GameEnd.swift
//  Untitled
//
//  Created by Brandon Troche on 8/19/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

import Foundation

class GameEnd: CCNode {
    weak var messageLabel: CCLabelTTF!
    weak var scoreLabel: CCLabelTTF!
    
    
    func newGame() {
        var mainScene = CCBReader.loadAsScene("MainScene")
        CCDirector.sharedDirector().presentScene(mainScene)
    }
    
    func setMessage(message: String, score: Int) {
        messageLabel.string = message
        scoreLabel.string = "\(score)"
    }
}