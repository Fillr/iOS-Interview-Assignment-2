//
//  SpaceshipViewModel.swift
//  SpaceInvader
//
//  Created by Zhao, Alex | COCO on 3/3/21.
//

import UIKit
import RxSwift

class SpaceshipViewModel: NSObject {
    var spaceship: Spaceship
    
    var originalPosition: CGPoint
    var position: CGPoint
    var area: CGRect
    public let targetPosition: PublishSubject<CGPoint> = PublishSubject()
    
    init(spaceship: Spaceship, position: CGPoint) {
        self.spaceship = spaceship
        self.originalPosition = position
        self.position = position
        self.area = CGRect.zero
        self.targetPosition.onNext(position)
    }
    
    func updateSteps(steps: u_int) {

    }
    
    func setTargetPosition(targetPosition: CGPoint) {
        position = targetPosition
        self.targetPosition.onNext(targetPosition)
    }
}
