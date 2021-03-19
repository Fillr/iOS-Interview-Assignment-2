//
//  GameLoopDisplayLink.swift
//  SpaceInvader
//
//  Created by Zhao, Alex | COCO on 19/3/21.
//

import UIKit

class GameLoopDisplayLink: NSObject {
    var displayLink: CADisplayLink?
    var startTime = 0.0
    var steps: u_int = 0;
    var gameLogicObserver: GameLogicObserverProtocol?
    
    override init() {
        super.init()
        
        startTime = CACurrentMediaTime()
        displayLink = CADisplayLink(
            target: self, selector: #selector(fireDisplayLink)
        )
        displayLink?.add(to: .main, forMode: RunLoop.Mode.common)
    }
    
    @objc func fireDisplayLink() {
        let elapsed = CACurrentMediaTime() - startTime
        steps = (u_int)(elapsed * 60)
        if gameLogicObserver != nil {
            gameLogicObserver!.onGameLoopUpdate(steps: steps)
        }
    }
}
