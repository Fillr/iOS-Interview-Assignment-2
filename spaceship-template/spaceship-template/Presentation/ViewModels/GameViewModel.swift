//
//  GameViewModel.swift
//  SpaceInvader
//
//  Created by Zhao, Alex | COCO on 13/3/21.
//

import UIKit
import RxSwift

@objc public protocol GameLogicObserverProtocol {
    func onGameLoopUpdate(steps: u_int)
}

class GameViewModel: NSObject, GameLogicObserverProtocol {
    var userShipViewModel: SpaceshipViewModel

    override init() {
        let userShip = Spaceship(assetName: "player_ship")
        userShip.isUser = true
        userShip.facingDirection = SpaceShipFacingDirection.Up
        let spaceshipVM = SpaceshipViewModel(spaceship: userShip, position: CGPoint(x: 50, y: 50))
        userShipViewModel = spaceshipVM
    }
    
    func setTouchPosition(touchPosition: CGPoint) {
        self.userShipViewModel.setTargetPosition(targetPosition: touchPosition)
    }
    
    func onGameLoopUpdate(steps: u_int) {
        userShipViewModel.updateSteps(steps: steps)
    }
}
