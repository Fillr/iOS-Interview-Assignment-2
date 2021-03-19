//
//  Spaceship.swift
//  SpaceInvader
//
//  Created by Zhao, Alex | COCO on 3/3/21.
//

import UIKit

class SpaceshipView: UIView {
    
    var backgroundImageView : UIImageView? = nil
    
    var viewModel: SpaceshipViewModel?

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundImageView = UIImageView.init(frame: self.bounds)
        backgroundImageView!.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        backgroundImageView!.contentMode = .scaleAspectFill
        self.addSubview(backgroundImageView!)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setViewModel(viewModel: SpaceshipViewModel) {
        self.viewModel = viewModel
        viewModel.originalPosition = self.center
        viewModel.position = self.center
        viewModel.area = self.frame
        
        if self.viewModel?.spaceship.assetName != nil {
            let spaceshipImage = UIImage.init(named: self.viewModel!.spaceship.assetName)
            backgroundImageView!.image = spaceshipImage
            if self.viewModel!.spaceship.facingDirection == SpaceShipFacingDirection.Down {
                let angle = Double.pi
                backgroundImageView?.transform = CGAffineTransform.init(rotationAngle: CGFloat(angle))
            }
        }
        
        let _ = viewModel.targetPosition.asObserver().subscribe(onNext: { targetPosition in
            if (viewModel.spaceship.isUser) {
                UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveEaseOut, animations: {
                    self.center = targetPosition
                    viewModel.position = targetPosition
                    viewModel.area = self.frame
                }, completion: { finished in
                    viewModel.position = targetPosition
                    viewModel.area = self.frame
                })
            }
        })
    }
}
