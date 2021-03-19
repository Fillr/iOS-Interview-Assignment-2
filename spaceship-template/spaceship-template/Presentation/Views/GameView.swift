//
//  GameView.swift
//  SpaceInvader
//
//  Created by Zhao, Alex | COCO on 13/3/21.
//

import UIKit

class GameView: UIView {
    
    var viewModel: GameViewModel?
    
    var lifeLabel: UILabel?
    var scoreLabel: UILabel?

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.isUserInteractionEnabled = true
    }
    
    func setViewModel(viewModel: GameViewModel) {
        self.viewModel = viewModel

        let spaceshipView = SpaceshipView(frame: CGRect(origin: CGPoint(x: self.bounds.size.width / 2, y: self.bounds.size.height - 100), size: CGSize(width: 50, height: 50)))
        spaceshipView.setViewModel(viewModel: viewModel.userShipViewModel)
        self.addSubview(spaceshipView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesMoved(_ touches: Set<UITouch>,
                               with event: UIEvent?) {
        if touches.count > 0 {
            viewModel?.setTouchPosition(touchPosition: touches.first!.location(in: self))
        }
    }
}
