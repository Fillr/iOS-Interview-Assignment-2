//
//  Spaceship.swift
//  SpaceInvader
//
//  Created by Zhao, Alex | COCO on 3/3/21.
//

import UIKit

public enum SpaceShipFacingDirection {
    case Up
    case Down
}

class Spaceship: NSObject {
    var isUser: Bool = false
    var life: Int = 5
    var weaponPower: Int = 1
    var speed: Int = 2
    var fireInterval = 1
    var assetName: String
    var facingDirection: SpaceShipFacingDirection = SpaceShipFacingDirection.Down
    
    init(assetName: String) {
        self.assetName = assetName
    }
}
